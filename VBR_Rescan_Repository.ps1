# --------------------------------------------------------------------------------------------------------------------
# Script: VBR_Rescan_Repository.ps1 - Script to rescan VBR backup repository
# Contact: Paulo Roberto Sant´anna Cardoso (contato@paulosantanna.com)
# Compatibility: Veeam Backup Replication v10; v11
# Blog: paulosantanna.com
# Date: 22/07/2021
# ---------------------------------------------------------------------------------------------------------------------
# Lists existing repositories on Veeam Backup & Replication server
Get-VBRBackupRepository
$name = Read-Host 'Enter the repository name'
Write-Host "The repository will be rescanned: " $name  -ForegroundColor Yellow
# Rescan the selected repository
Sync-VBRBackupRepository -Repository $Name
