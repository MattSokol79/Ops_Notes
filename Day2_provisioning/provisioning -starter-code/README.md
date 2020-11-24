# Provisioning with Vagrant

## Core Sections of provisioning
There are some actions that are core to provisioning. 
These concepts are tool and language agnostic (not locked down to that one specific tool or language i.e. need to know what to do in general for every possible programming language NOT SAYING THE COMMAN E.G. IN RUBY)
- Making files available (Covered today)
- Being able to run commands/scripts (Covered today)
- Injecting environment variables

## Synching in files with VM
- Allows us to send files and sync them into the VM. This is so we can make code and other necessary file available.
- 
- Sending in files -> 
```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.10.100"
  # config.hostsupdater.aliases = ["development.local"]

  # Sync the app folder
  # config.vm.synced_folder "path/origin/folder", "path/to/destination/folder"
  config.vm.synced_folder "app", "/app"
  
end
```

## Running bash script
- This bash script can install packages, alter files, run code, do actions in our linux servers when we run `vagrant up`.
- This will allow us to set up the machine to state that is desirable for us and automate processes.

1. Create a `provision.sh` file
2. Include it in the vagrant file
```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", ip: "192.168.10.100"
  # config.hostsupdater.aliases = ["development.local"]

  # Sync the app folder
  # config.vm.synced_folder "path/origin/folder", "path/to/destination/folder"
  config.vm.synced_folder "app", "/app"

  # Run the provision script we created in envrionment folder
  config.vm.provision "shell", path: "environment/provision.sh"

end
```

## Managing runningservices in Linux
- `sudo apt install nginx -y` - To install nginx
- `sudo systemctl <action> <service>` e.g. status, start, stop -> nginx
- `sudo systemctl restart nginx`

## Given new project to create an Environments
When given a new project, you want to ask a few questions to help you get going. 
- Example:
  - What language is it in?
  - Is there a framework to install? (rails, flask, django, workpress)
  - Any specific packages? If so, is there a list? (Gemfile, requirements.txt)
  - Any tests?

**Answers**
- What language is it in?
  - Code is in JS and others.
  - There are some tests in ruby and rspec
- Is there a framework to install?
  - No, only the testing framework, rspec
- Any specific packages?
  - Yes, with the environment file, you have a Gemfile with dependencies
- Any tests?
  - Yes, 2 tests, have integration tests to run outside the machine:
    - rake spec
  - Also there might be some unit tests in JS inside


## gem and bundler VS pip and packages
- gems are packages in ruby or dependencies
- bundler is ruby's package manager

- Gemfile keeps a list of depndencies to be installed

- To install gems from the Gemfile, you run: `gem install bundler`
-> Lets install bundler

## Ruby's testing framework is rspec
- rspec needs to be installed

## JS package manager is npm (node package manager)
- npm packages

- After version 6.0 (not sure the actual version), comes pre loaded with NPM.

## Ubuntu package manager
- `apt-get` (or just `apt`)

## Installing test
1. In bash, go to folder with Gemfile -> spec/
2. Run `bundle` 

**Running Tests**
- Run `rake spec`
- Initially, most of the tests will fail, the rest of the lecture was fixing the code so that tests pass/task for us to do

1. Nginx installed
2. nginx running and enabled
3. Using port 80
4. package nodejs installed
5. command nodejs --version is expected to be something
6. package pm2 installed
7. package git installed
8. git version /2\.7...

## Lecture objectives
**Objectives**
- Run lots of tests
- Understood what they are testing
- Solved all of the failing tests

**Know how to:**
- Provision your mahcine with:
  - Code
  - Instructions