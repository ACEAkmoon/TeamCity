SERV="http://192.168.1.1:8111"
PLATFORM="ACEAkmoon_IOSPredprod"
NAME="ACEAkmoon_841.zip"
INSTALL="ACEAkmoon.ipa"
BUILD_ID="9318"
BUILD_C=$(%build.counter%)
CHAT_ID="-ENTER_YOU_CHAT_ID"
TOKEN="ENTER_YOU_TOKEN_ID:AAGHrl5sa0BgD-BOpiuQTl9_I3ihtp6-wwQ"
URL=""$SERV"/repository/download/"$PLATFORM"/"$BUILD_ID":id/"$NAME"%21/"$INSTALL""

curl -s -X POST "https://api.telegram.org/bot"$TOKEN"/sendMessage" -F chat_id=$CHAT_ID -F text="Linc Artifacts "$PLATFORM"#"$BUILD_C": "$URL""

exit 0
