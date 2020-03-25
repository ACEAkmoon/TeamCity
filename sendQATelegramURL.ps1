$SERV_URL=%HTTP_SRV_TC%
$PLATFORM=%PG_PLATFORM%
$BUILD_ID=%TEAMCITY_BUILD_ID%
$NAME_ART=%NAME_ARTIFAKT%
$NAME_APP=%NAME_APP%
$BUILD_NB=%BUILD_NUMBER%
$CHAT__ID=%PG_CHAT%
$TOKEN_ID="ENTER_YOU_TOKEN_ID:AAGHrl5sa0BgD-BOpiuQTl9_I3ihtp6-wwQ"
$POST_URL="https://api.telegram.org/bot"ENTER_YOU_TOKEN_ID":AAGHrl5sa0BgD-BOpiuQTl9_I3ihtp6-wwQ/sendMessage"
$REPO_URL=""$SERV_URL"/repository/download/"$PLATFORM"/"$BUILD_ID":id/"$NAME_ART"%21/"$NAME_APP""
Write-Output .
Write-Output $SERV_URL
Write-Output $PLATFORM
Write-Output $BUILD_ID
Write-Output $NAME_ART
Write-Output $NAME_APP
Write-Output $BUILD_NB
Write-Output $CHAT__ID
Write-Output $TOKEN_ID
Write-Output $POST_URL
Write-Output $REPO_URL
Write-Output .
curl -s -X POST "https://api.telegram.org/bot"ENTER_YOU_TOKEN_ID":AAGHrl5sa0BgD-BOpiuQTl9_I3ihtp6-wwQ/sendMessage" -F chat_id=$CHAT__ID -F text="Linc Artifacts "$PLATFORM"#"$BUILD_NB": "$REPO_URL""
Write-Output Well Done!