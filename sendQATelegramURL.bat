@ECHO OFF
set SERV_URL=%HTTP_SRV_TC%
set PLATFORM=%PG_PLATFORM%
set BUILD_ID=%TEAMCITY_BUILD_ID%
set NAME_ART=%NAME_ARTIFAKT%
set NAME_APP=%NAME_APP%
set BUILD_NB=%BUILD_NUMBER%
set CHAT__ID=%PG_CHAT%
set TOKEN_ID="ENTER_YOU_TOKEN_ID:AAGHrl5sa0BgD-BOpiuQTl9_I3ihtp6-wwQ"
set POST_URL="https://api.telegram.org/bot"%TOKEN_ID%"/sendMessage"
set REPO_URL=""%SERV_URL%"/repository/download/"%PLATFORM%"/"%BUILD_ID%":id/"%NAME_ART%"%%21/"%NAME_APP%""
echo.
echo %SERV_URL%
echo %PLATFORM%
echo %BUILD_ID%
echo %NAME_ART%
echo %NAME_APP%
echo %BUILD_NB%
echo %CHAT__ID%
echo %TOKEN_ID%
echo %POST_URL%
echo %REPO_URL%
echo.
curl -s -X POST "%POST_URL%" -F chat_id=%CHAT__ID% -F text="Linc Artifacts %BUILD_NB%::%PLATFORM%::%NAME_ART%:: -> %REPO_URL%"
echo.
echo Well Done!
exit 0