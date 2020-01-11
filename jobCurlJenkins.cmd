curl -X POST https://jenkins.aceakmoon.com/job/TEST/job/deploy/build --user "name.user":"password" --form file0=@TEST-dev-0.1-%build.number%.zip --form json="{\"parameter\": [{\"name\":\"deploy_file\", \"file\":\"file0\"}]}"

