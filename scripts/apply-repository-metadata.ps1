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
    Write-Host "Updating $fullName"

    $args = @(
        "repo", "edit", $fullName,
        "--description", $repo.description
    )

    if ($repo.topics.Count -gt 0) {
        foreach ($topic in $repo.topics) {
            $args += @("--add-topic", $topic)
        }
    }

    & gh @args

    if ($LASTEXITCODE -ne 0) {
        throw "Failed to update $fullName"
    }
}

Write-Host "Repository metadata update completed."
