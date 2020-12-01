# Jenkins - Setting up CI
- Create account
  
## Setting up SSH key
- Time to connect the reverse proxy app git repo to jenkins and run tests.
- Generate a new ssh key to connect to jenkins `ssh-keygen -t ed25519` in bash, can find ssh keys under `cd ~/.ssh` -> list of all ssh keys
  - `.pub` -> Public key, one without -> PRIVATE key 
  - Under `Source Code Managment`, add in the SSH of github rep
    - Domain = global credentials 
    - SSH Username with private key
    - Nothing else is important apart from the actual PRIVATE key
  - Go to Github, and add the PUBLIC SSH key that was just generated under SSH and GPG keys
    - Now the `Source Code Management` should be fine NO ERRORS to do with Access Denied
  
## Options within Configure
- **General** -> Discard old builds -> Max of 2 builds
  - GitHub project -> Paste in the URL of the repo
- **Office 365 Connector** -> Restrict where this project can be run -> sparta-ubuntu-node
- **Source Code Management** -> Git -> Repo URL `git@github i.e. SSH`
  - Credentials is your SSH connection
  - Branch specifier -> */main
- **Build Triggers**
  - GitHub hook trigger for GITScm polling
- **Build Environment** -> Provide Node & npm bin/folder to PATH
  - Leave as is 
- **Build**
  - Execute shell -> Commands e.g. Testing commands in there

***Now whatever changes are made and pushed to github should trigger a job in Jenkins !!!***

## Webhook with git repo
- Now setup ***Webhook*** in the github repo -> `http://18.133.181.127:8080/github-webhook/` ***(JENKINS ORIGINAL IP + MAKE SURE TO ADD IN THE GITHUB-WEBHOOK)*** in the url area of the webhook, change to json under the dropdown menu, source everything, no secrets and ok! Now the webhook should be set.

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


## Branching!
- Creating and naming a branch -> `git checkout -b <name of branch>`
- Can also change with `git checkout <name of branch e.g. main>` back to another branch
- Once in the branch, can add files to that branch with `git add .` `git commit -m "message"` and `git push origin <branch name>` 

![](img/branch.PNG)

- **Merging** - Once code has been pushed into your branch, you can do a pull request on github to merge into the main branch
- To make sure that your branch is up to date `git pull origin main` on your branch

### Merging with Jenkins
- If you are working on a specific branch -> you might want to automatically test your work with Jenkins to ensure the project works as intended. 
- Then, if all tests pass, we probably want to merge into main:
  - Ensure the `Branches to build` -> `*/dev-env` in Jenkins so it listens to your branch, not main
  - If tests pass e.g. 
```bash
cd app/
sudo npm install
npm test
```
  - `Post-build Actions` -> Choose `Git Publisher` 
    - Push only if build succeeds
    - Force push
    - Branches -> `main`
    - Target remote name -> `origin`
- Now once the `dev-env` branch pushes anything, Jenkins will automatically test the build to make sure the code still works, and once all tests pass -> Pushes to main branch

