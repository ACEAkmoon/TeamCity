STRING="SET env. - Well Done"
FOLDER_NAME=$(cat assetbundles.folder)

echo $FOLDER_NAME
echo "##teamcity[setParameter name='BUNDLES_VERSION' value='$FOLDER_NAME']"
echo $STRING
