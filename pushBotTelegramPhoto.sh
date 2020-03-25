#!/bin/bash

File="@test.jpg"
BotToken="ENTER_YOU_TOKEN_ID:AAGHrl5sa0BgD-BOpiuQTl9_I3ihtp6-wwQ"
chatid="ENTER_YOU_CHAT_ID"

curl -s -X POST "https://api.telegram.org/bot"$BotToken"/sendPhoto" -F chat_id="$chatid" -F photo="@$File"

exit 0
