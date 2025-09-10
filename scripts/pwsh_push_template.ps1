# PowerShell template — initial push for the notes repo
param(
  [Parameter(Mandatory=$true)][string]$RepoDir,
  [Parameter(Mandatory=$true)][string]$RemoteUrl # e.g. git@github.com:foritech-secure-system/forisecure-notes.git
)

Set-Location $RepoDir
git init
git add .
git commit -m "chore(notes): seed sync portal scaffold"
git branch -M main
git remote add origin $RemoteUrl
git push -u origin main
