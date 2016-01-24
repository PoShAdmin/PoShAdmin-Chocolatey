$ErrorActionPreference = 'Stop';

$PoShAdminVersion="1.0.0.1"
$packageName= 'poshadmin'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = "https://github.com/PoShAdmin/PoShAdmin/archive/v$PoShAdminVersion.zip"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  checksum      = '51495f1ead4ef5ed7ea753bb97024b052336b71c'
  checksumType  = 'sha1'
}

Install-ChocolateyZipPackage @packageArgs
Import-Module PsGet
Install-Module -ModuleName PoShAdmin -ModulePath "$($packageArgs.unzipLocation)`\PoShAdmin-$PoShAdminVersion" -Global -Force -DoNotImport:$true
