#This script helps to create a Windows restore point
Write-Host "System restore point is enabled for the C system drive"
#User input
$counter = 0
while(!$Host.UI.RawUI.KeyAvailable -and ($counter++ -lt 600))
{
      [Threading.Thread]::Sleep( 1000 )
}


#Creating restore point
Enable-ComputerRestore -Drive"C:"
Write-Host "System restore point creation was started"
Checkpoint-Computer -Description "$env:computername_$(Get-Date)" -RestorePointType MODIFY_SETTINGS
Write-Host "System restore point creation completed at $(Get-Date)"
