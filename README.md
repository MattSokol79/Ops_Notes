# First Virtual Box and Vagrant Dev Environment
This repo is the first virtual environment to create dev envrionment

## Virtual Box
What is it?

## Vagrant
What is it?

Vagrant boxes - pre loaded vagrant files that create virtual machines. Usually just an OS

Ubuntu - an open source OS
Ubuntu with GUI (Graphical User Interface) - Looks like a desktop and works like one.
Ubuntu headless - is basically a terminal, no GUI (This is the one we will use)
- Faster
- More secure
- Lighter

### Main commands 
- `vagrant init`
- `vagrant init <box>` - search for boxes in vagrant.com
- `vagrant up`
- `vagrant destroy`
- `vagrant ssh`
- `vagrant suspend`
- `vagrant reload` - Once something is updated in vagrant file, reloads vb to update it and runs it 

### Linux ubuntu
- `sudo apt-get update` (Sudo=admin) (apt can be used instead of apt-get)

### Task 1
- `vagrant up` with ubuntu/xenial64
- `vagrant destroy`
- delete your vagrant file
- use vagrant init to create vagrant file with centos 7
- `vagrant up` again
- `vagrant destroy`
**Take note of machines being created in virtual box**

Inside linux machine we can use bash
-ls, ll, cd, mkdir, rm, rm -rf, ls -a


### Task 2 
- Create a vagrant box with ubuntu version 18.04
  - `"ubuntu/bionic64"`
- To log into the machine `vagrant ssh` and can do bash commands within
- Create a README.md file inside machine and write your school
  - Once ssh into the vb, it will act as bash so can do all the same commands such as touch README.md and nano etc.