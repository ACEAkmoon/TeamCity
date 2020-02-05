@ECHO OFF

# ------------------- step add ssh key serv-test -------------------
start pageant.exe C:\Users\Admin\.ssh\my_key_prv.ppk

# ------------------- step copy to serv-test -------------------
start pscp.exe -r Builds\templates\* root@my_akmoon.com://var/www/hopa/static/Version_08/Android

echo Done.
pause
