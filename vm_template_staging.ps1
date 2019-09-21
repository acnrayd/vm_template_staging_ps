$OldComputername = $ENV:Computername
$Random = Get-Random -Maximum 999 -Minimum 1

$NewComputername = "WinVM" + $Random

Write-Output  $OldComputername
Write-Output  $NewComputername

Rename-Computer -NewName $NewComputername -PassThru

Invoke-Command -ScriptBlock {ipconfig /release}
Invoke-Command -ScriptBlock {ipconfig /renew}

Restart-Computer -Force
