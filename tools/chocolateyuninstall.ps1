$ErrorActionPreference = 'Stop';
$packageName = 'poshadmin'
UnInstall-ChocolateyZipPackage 'poshadmin' "poshadminInstall.zip" 
Write-Warning "You have to have all PowerShell windows closed to cleanly uninstall the PoShAdmin PowerShell module."
Remove-Item -Force -Recurse "C:\Program Files\WindowsPowerShell\Modules\PoShAdmin"
