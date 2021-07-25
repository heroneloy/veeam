# --------------------------------------------------------------------------------------------------------------------
# Script: VBR_Rescan_Repository.ps1 - Script to rescan VBR backup repository
# Contact: Paulo Roberto Sant´anna Cardoso (contato@paulosantanna.com)
# Compatibilidade: Veeam Backup Replication v10; v11
# Blog: paulosantanna.com
# Date: 22/07/2021
# ---------------------------------------------------------------------------------------------------------------------
Get-VBRBackupRepository
$name = Read-Host 'Enter the repository name'
Write-Host "The repository will be rescanned: " $name  -ForegroundColor Yellow
Sync-VBRBackupRepository -Repository $Name
