param(
    [switch]$Apply
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI (gh) is required. Install it and run 'gh auth login' first."
}

$repositories = @(
    "bielfelix/NeuroCart",
    "bielfelix/smart-model-router-gateway",
    "bielfelix/project-node-grafana-mcp",
    "bielfelix/project-node-embeddings-neo4j",
    "bielfelix/project-node-langchain",
    "bielfelix/project-node-medical-appointment",
    "bielfelix/E-commerce-Recommendation-System-MongoDB-API-Architecture",
    "bielfelix/ecommerce-recomendations-with-ml",
    "bielfelix/icons-svg",
    "bielfelix/How-to-win-any-game-beta"
)

Write-Host "Repositories recommended for private/reference status:"
$repositories | ForEach-Object { Write-Host "  - $_" }

if (-not $Apply) {
    Write-Host ""
    Write-Host "No visibility was changed."
    Write-Host "Run again with -Apply to change these repositories to private."
    exit 0
}

foreach ($repository in $repositories) {
    Write-Host "Changing $repository to private..."
    gh repo edit $repository --visibility private --accept-visibility-change-consequences

    if ($LASTEXITCODE -ne 0) {
        throw "Failed to change visibility for $repository"
    }
}

Write-Host ""
Write-Host "Reference repositories are now private."
