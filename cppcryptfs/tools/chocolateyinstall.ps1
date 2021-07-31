$ErrorActionPreference = 'Stop';

$packageName = 'cppcryptfs'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$baseUrl = "https://github.com/bailey27/cppcryptfs/releases/download/"
$version = "1.4.3.8"

$cppcryptfsArgs = @{
  packageName    = $packageName
  fileFullPath   = "$toolsDir\cppcryptfs.exe"
  url            = "$baseUrl/$version/cppcryptfs32.exe"
  url64bit       = "$baseUrl/$version/cppcryptfs.exe"
  checksum       = 'E06626B5049DBEC36965F449BEF9B7338B8E944BECAF8C4B21BD0B2E203E5CB4'
  checksumType   = 'sha256' 
  checksum64     = 'FD1D17D40A1FC1316BAF1DA9537DAAC5AC3C7EDB11705BC0851B080EEFF7A47E'
  checksumType64 = 'sha256' 
}

$cppcryptfsctlArgs = @{
  packageName    = $packageName
  fileFullPath   = "$toolsDir\cppcryptfsctl.exe"
  url            = "$baseUrl/$version/cppcryptfsctl32.exe"
  url64bit       = "$baseUrl/$version/cppcryptfsctl.exe"
  checksum       = '71F91C9E0C29030DE7792C47757C02EE9F4CB349433A68AD131DE3C2C4FF8C9B'
  checksumType   = 'sha256' 
  checksum64     = 'D96B423BE7509E66ED69620BCB3C966FE83617C3622D4E1A8D5A6A87AD07C544'
  checksumType64 = 'sha256' 
}

Get-ChocolateyWebFile @cppcryptfsArgs
Get-ChocolateyWebFile @cppcryptfsctlArgs
