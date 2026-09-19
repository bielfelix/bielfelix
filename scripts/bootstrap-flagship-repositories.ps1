param(
    [string]$Owner = "bielfelix"
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI (gh) is required. Install it and run 'gh auth login' first."
}

$repositories = @(
    @{
        Name = "llm-reliability-gateway"
        Description = "Production-oriented LLM gateway with provider abstraction, routing policies, fallback, reliability controls, tracing and evaluation hooks."
        Topics = @("llm","ai-engineering","typescript","fastify","opentelemetry","redis","postgresql","docker","software-architecture")
    },
    @{
        Name = "rag-evaluation-platform"
        Description = "RAG engineering platform for ingestion, hybrid retrieval, reranking, grounded answers, evaluation datasets and regression testing."
        Topics = @("rag","ai-engineering","python","fastapi","pgvector","embeddings","retrieval","evaluation","opentelemetry","docker")
    },
    @{
        Name = "multi-tenant-saas-platform"
        Description = "Multi-tenant SaaS backend demonstrating RBAC, queues, idempotent webhooks, billing adapters, audit trails, quotas and API architecture."
        Topics = @("laravel","php","postgresql","redis","multi-tenant","rbac","webhooks","docker","openapi","software-architecture")
    }
)

foreach ($repo in $repositories) {
    $fullName = "$Owner/$($repo.Name)"

    gh repo view $fullName --json name *> $null

    if ($LASTEXITCODE -eq 0) {
        Write-Host "$fullName already exists. Skipping creation."
    }
    else {
        Write-Host "Creating $fullName..."
        gh repo create $fullName --public --description $repo.Description --add-readme

        if ($LASTEXITCODE -ne 0) {
            throw "Failed to create $fullName"
        }
    }

    $args = @("repo","edit",$fullName,"--description",$repo.Description)
    foreach ($topic in $repo.Topics) {
        $args += @("--add-topic",$topic)
    }

    & gh @args

    if ($LASTEXITCODE -ne 0) {
        throw "Failed to configure $fullName"
    }
}

Write-Host ""
Write-Host "Flagship repositories are ready."
Write-Host "Return to ChatGPT after creation so the repositories can be populated with original implementations."
