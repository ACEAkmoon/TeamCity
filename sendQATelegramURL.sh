SERV_URL=$HTTP_SRV_TC
PLATFORM=$PG_PLATFORM
BUILD_ID=$TEAMCITY_BUILD_ID
NAME_ART=$NAME_ARTIFAKT
NAME_APP=$NAME_APP
BUILD_NB=$BUILD_NUMBER
CHAT__ID=$PG_CHAT
TOKEN_ID="ENTER_YOU_TOKEN_ID:AAGHrl5sa0BgD-BOpiuQTl9_I3ihtp6-wwQ"
POST_URL="https://api.telegram.org/bot"ENTER_YOU_TOKEN_ID":AAGHrl5sa0BgD-BOpiuQTl9_I3ihtp6-wwQ/sendMessage"
REPO_URL=""$SERV_URL"/repository/download/"$PLATFORM"/"$BUILD_ID":id/"$NAME_ART"%21/"$NAME_APP""
echo ''
echo $SERV_URL
echo $PLATFORM
echo $BUILD_ID
echo $NAME_ART
echo $NAME_APP
echo $BUILD_NB
echo $CHAT__ID
echo $TOKEN_ID
echo $POST_URL
echo $REPO_URL
echo ''
curl -s -X POST "https://api.telegram.org/bot"ENTER_YOU_TOKEN_ID":AAGHrl5sa0BgD-BOpiuQTl9_I3ihtp6-wwQ/sendMessage" -F chat_id=$CHAT__ID -F text=""$BUILD_NB"::"$PLATFORM"::"$NAME_ART" -> "$REPO_URL""
echo ''
echo Well Done!
exit 0