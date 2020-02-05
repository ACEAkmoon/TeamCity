$STRING = "SET env. - Well Done!"
$FOLDER_NAME = cat assetbundles.folder

Write-Output $FOLDER_NAME
Write-Host "##teamcity[setParameter name='BUNDLES_VERSION' value='$FOLDER_NAME']"
Write-Output $STRING
