Set-Location -Path Cert:\CurrentUser\My
Get-Certificate -Template User -Url ldap:
Get-Item [certthumbprint] | Select-Object *
Get-Item Cert:\CurrentUser\my\[thumbprint] |Select-Object *

Dir Cert:\CurrentUser\my\
Get-Item Cert:\CurrentUser\my\[thumbprint] | Select-Object *
Get-ADUser [username] -properties usercertificate

$scriptPath=[scriptpath]
$myCertInfo=dir Cert:\CurrentUser\my\[thumbnail]
Set-AuthenticodeSignature -FilePath $scriptPath -Certificate $myCertInfo
