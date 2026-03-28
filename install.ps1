# ============================================
# CEASAR.AI — Installation du cours gratuit
# ============================================

Write-Host ""
Write-Host "  CEASAR.AI — Installation en cours..."
Write-Host ""

$dest = "$env:USERPROFILE\.claude\commands\ceasar"
New-Item -ItemType Directory -Force -Path $dest | Out-Null

$repoDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Copy-Item "$repoDir\commands\ceasar\*.md" $dest

Write-Host "  Cours installe avec succes !"
Write-Host ""
Write-Host "  Dans Claude Code, tape :"
Write-Host ""
Write-Host "    /ceasar:start"
Write-Host ""
Write-Host "  Bonne formation !"
Write-Host ""
