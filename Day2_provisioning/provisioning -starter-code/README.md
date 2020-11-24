# Provisioning with Vagrant
- sending in files

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
3. 
**Running Tests**
- Run `rake spec`
- Initially, most of the tests will fail, the rest of the lecture was fixing the code so that tests pass/task for us to do

## Lecture objectives
**Objectives**
- Run lots of tests
- Understood what they are testing
- Solved all of the failing tests

**Know how to:**
- Provision your mahcine with:
  - Code
  - Instructions