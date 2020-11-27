# Jenkins & CI/CD
## What is CI-CD -> Continous integration, delivery and deployment?
- CI/CD is a method to frequently deliver apps to customers by introducing automation into the stages of app development. The main concepts attributed to CI/CD are continuous integration, continuous delivery, and continuous deployment. CI/CD is a solution to the problems integrating new code can cause for development and operations teams (AKA "integration hell")

**CI** - Developers merge/commit code to master branch multiple times a day, fully automated build and test process which gives feedback within few minutes, by doing so, you avoid the integration hell that usually happens when people wait for release day to merge their changes into the release branch.

- Automated testing and commiting to branch multiple times a day to avoid integration hell at the end of the day

**Continous Delivery** - is an extension of continuous integration to make sure that you can release new changes to your customers quickly in a sustainable way. This means that on top of having automated your testing, you also have automated your release process and you can deploy your application at any point of time by clicking on a button. In continuous Delivery the deployment is completed manually.

- Delivery is not yet live, but can be live at any moment

**Continous Deployment** goes one step further than continuous delivery, with this practice, every change that passes all stages of your production pipeline is released to your customers, there is no human intervention, and only a failed test will prevent a new change to be deployed to production.

- It is deployed and is live (automated)

## What is the CI/CD pipeline?
- The CI/CD pipeline is all about automation: Initiating code builds, automated testing, and automated deploying to the staging or production environments. It’s complex and exciting at the same time, but incredibly fast, if the output of any stage fails, the next stage will also fail.

## What is Jenkins - Tool to build a CI/CD pipeline?
- Jenkins is an open-source ***automation server*** in which the central build and CI process take place, It is a Java-based program with packages for Windows, macOS, & Linux.
- Great range of plugins available, Jenkins supports building, deploying, and automating for software development projects, easy installation, simple and user-friendly interface, extensible with huge community-contributed plugin resource, easy environment configuration in user interface & supports distributed builds with master-slave architecture.


## Jenkins demo
1. Enter an item - freestyle project - ok
2. Description -> Give description of project e.g. - CI pipeline bla
3. Discard old build - max of 2 builds
4. Restrict - sparta node
5. Source code -> Github repo -> Add key to credentials KEY, SSH
6. Go to github SSH keys -> new ssh key Title -> jenkins -> copy in the ssh key from your pc
7. Github hook trigger -> need to point it to specific location 
8. Provide node npm bin folder to PATH
9. Build -> command -> execute shell -> cd/home/ubuntu app npm install npm test
10. point github to ip -> go to repo -> settings -> webhook -> add webhook -> point to server -> <url in the payload url>/github-webhook/
11. in terminal `echo 'test 1' >> README.md in repo` -> Git push should trigger jenkins to begin work  