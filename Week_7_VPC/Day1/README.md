# Jenkins CI Task - Setting up CI
- Create account
- Time to connect the reverse proxy app git repo to jenkins and run tests.
- npm test in the /home/ubuntu/app within vagrant ssh app
- Generate a new ssh key to connect to jenkins `ssh-keygen -t ed25519` in bash, can find ssh keys under `cd ~/.ssh` -> list of all ssh keys
  - `.pub` -> Public key, one without -> PRIVATE key 
  - Under `Source Code Managment`, add in the SSH of github rep
    - Domain = global credentials 
    - SSH Username with private key
    - Nothing else is important apart from the actual PRIVATE key
  - Go to Github, and add the PUBLIC SSH key that was just generated under SSH and GPG keys
    - Now the `Source Code Management` should be fine NO ERRORS to do with Access Denied
- Change the branches to build -> */main
- Build triggers -> Github hook trigger for GITScm polling
- Now setup ***Webhook*** in the github repo -> `http://18.133.181.127:8080/github-webhook/` ***(JENKINS ORIGINAL IP + MAKE SURE TO ADD IN THE GITHUB-WEBHOOK)*** in the url area of the webhook, change to json under the dropdown menu, source everything, no secrets and ok! Now the webhook should be set.
- Now whatever changes are made and pushed to github should trigger a job in Jenkins !!!
- Under office 365 -> Restrict where this project can be run -> spart-ubuntu-node -> this ensures it runs it in VM
- Build environment -> Provide Node &npm bin/folder to PATH (Leave as is)
  
**Testing** -> Testing the Reverse Proxy Repo
- Add in npm testing under build commands
```bash
echo "This has been triggered"
cd app/
npm install
npm test
```
- REMEMBER, it `cd` into files similar to your repo -> Check under Workspace for the build in jenkins the files.
- Now as long as you have fulfilled all of the tests -> It has passed!