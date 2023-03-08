#This script helps to create a Windows restore point
Write-Host "System restore point is enabled for the C system drive"
Enable-ComputerRestore -Drive"C:"
Write-Host "System restore point creation was started"
Checkpoint-Computer -Description "$env:computername_$(Get-Date)" -RestorePointType MODIFY_SETTINGS
Write-Host "System restore point creation completed at $(Get-Date)"
