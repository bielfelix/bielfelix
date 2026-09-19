param(
    [string]$Owner = "bielfelix"
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI (gh) is required. Install it and run 'gh auth login' first."
}

$metadataPath = Join-Path $PSScriptRoot "..\docs\repository-metadata.json"
$metadata = Get-Content $metadataPath -Raw | ConvertFrom-Json

foreach ($repo in $metadata.repositories) {
    $fullName = "$Owner/$($repo.name)"
    Write-Host ""
    Write-Host "Synchronizing $fullName"

    $currentTopics = @(
        gh repo view $fullName --json repositoryTopics --jq ".repositoryTopics[].name"
    )

    if ($LASTEXITCODE -ne 0) {
        throw "Failed to read metadata for $fullName"
    }

    $args = @(
        "repo", "edit", $fullName,
        "--description", $repo.description
    )

    foreach ($topic in $currentTopics) {
        if ($topic -and ($repo.topics -notcontains $topic)) {
            $args += @("--remove-topic", $topic)
        }
    }

    foreach ($topic in $repo.topics) {
        if ($currentTopics -notcontains $topic) {
            $args += @("--add-topic", $topic)
        }
    }

    & gh @args

    if ($LASTEXITCODE -ne 0) {
        throw "Failed to update $fullName"
    }
}

Write-Host ""
Write-Host "Repository descriptions and topics synchronized successfully."
