$ErrorActionPreference = "Stop"

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "GitHub CLI (gh) is required. Install it and run 'gh auth login' first."
}

Write-Host "Updating GitHub profile metadata for bielfelix..."

gh api --method PATCH `
  -H "Accept: application/vnd.github+json" `
  -H "X-GitHub-Api-Version: 2022-11-28" `
  /user `
  -f name="Gabriel Felix" `
  -f bio="Senior Full Stack Developer | Applied AI Engineer | Software Architecture | Backend, Cloud, APIs & AI-enabled Systems" `
  -f company="Felix Studio" `
  -f location="Contagem, Minas Gerais, Brazil" `
  -f blog="https://felixstudio.com.br/"

if ($LASTEXITCODE -ne 0) {
    throw "GitHub profile metadata update failed."
}

Write-Host ""
Write-Host "Profile updated:"
Write-Host "  Name: Gabriel Felix"
Write-Host "  Bio: Senior Full Stack Developer | Applied AI Engineer | Software Architecture | Backend, Cloud, APIs & AI-enabled Systems"
Write-Host "  Company: Felix Studio"
Write-Host "  Location: Contagem, Minas Gerais, Brazil"
Write-Host "  Website: https://felixstudio.com.br/"
