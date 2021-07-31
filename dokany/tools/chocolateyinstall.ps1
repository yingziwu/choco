$ErrorActionPreference = 'Stop';

$packageName = 'dokany'
$baseUrl = "https://github.com/dokan-dev/dokany/releases/download/"
$version = "v1.5.0.3000"
$url = "$baseUrl/$version/Dokan_x86.msi"
$url64 = "$baseUrl/$version/Dokan_x64.msi"

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'msi'
  url            = $url
  url64bit       = $url64

  softwareName   = 'Dokan Library*'
  checksum       = '31F16DC3905F1683EB9DAC87210E83E679161BC2B2F4E05C9568DC4880F93448'
  checksumType   = 'sha256'
  checksum64     = '701B56281010ADF9FC401D5189DD223B1B300D4D123980A32A57F242A6A651D1'
  checksumType64 = 'sha256'

  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs