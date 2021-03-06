trap
{
    Write-Host "Caught Terminating Error" -ForegroundColor Red
    continue
}

$ErrorActionPreference = 'SilentlyContinue'

Write-Host "Executing Get-Item (non-existent path)"
$item = Get-Item -Path C:\Does\Not\Exist.txt

Write-Host "Executing Get-Acl (permission denied)"
$acl = Get-Acl -Path C:\PerfLogs\Admin

Write-Host "Executing Get-Acl (non-existent path)"
$acl = Get-Acl -Path C:\Does\Not\Exist.txt
