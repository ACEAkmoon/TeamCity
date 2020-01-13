#	NOTE: this CMD
# 	%build.vcs.number:~0,7%

#	PowerShell
$Hash = "%build.vcs.number%"
$ShortHash = &Hash.substring(0,7)
Write-Host "##teamcity[setParameter name='GitShortHash' value='$ShortHash']"