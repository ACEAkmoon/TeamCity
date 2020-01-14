@ECHO OFF

# ------------------- step add arhive 7zip -------------------
"C:\Program Files\7-Zip\"7z.exe a hopa-dev-0.1-%BUILD_NUMBER%-%BUILD_VCS_NUMBER:~0,7%.zip ".\target\hopa-0.1.jar"

# ------------------- step curl push jenkins -------------------

curl -X POST https://jenkins.aceakmoon.com/job/HOPA/job/DEV/job/deploy_hopa/build --user "USER:NAME":"USER:PASSWORD" --form file0=@hopa-dev-0.1-%BUILD_NUMBER%-%BUILD_VCS_NUMBER:~0,7%.zip --form json="{\"parameter\": [{\"name\":\"deploy_file\", \"file\":\"file0\"}]}"

