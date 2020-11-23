# First Virtual Box and Vagrant Dev Environment
This repo is the first virtual environment to create dev envrionment

## Virtual Box
- Virtual box is an open source hosted hypervisor used for the purposes of virtualisation (Usually means creation of an OS, server or storage) by creating a `virtual machine` where we can run another OS
- So this allows us to have a guest OS on our own OS
- A hypervisor is a layer of software which emulates the underlying hardware of a physical resource and separate the constituents so they can be used by the virtual environment.
- Can control exactly how much power/resources the box will consume

## What are environments?
- An environment is where code runs (NOT GitHub)
- Can be designed for different purposes: Development, Production, Testing etc.
- Virtual environments are a useful tool to keep dependencies required by different projects separate and consistent by creating isolated virtual machine/environments for them. (Avoids the issue of *it works on my computer*)
  
## Vagrant
- Open source Linux distribution
  - Written in Ruby
- Vagrant boxes - pre loaded vagrant files that create virtual machines.Usually just an OS
  - Easiest way of adding a box is looking up from the catalog on the website.
- Ubuntu - an open source OS
- Ubuntu with GUI (Graphical User Interface) - Looks like a desktop and works like one.
-Ubuntu headless - is basically a terminal, no GUI (This is the one we will use)
  - Faster
  - More secure
  - Lighter

### Main commands 
- `vagrant init` - Initialises directory to be a vagrant env, creates vagrant file 
- `vagrant init <box>` - search for boxes in [vagrant.com](https://app.vagrantup.com/)
- `vagrant up` - Creates and configures guest machines according to your vagrant file so machine can be used
- `vagrant destroy` - Stops the virtual machine and destroys resources 
- `vagrant ssh` - This will access the machine over a network
- `vagrant suspend`
- `vagrant reload` - Once something is updated in vagrant file, reloads vb to update it and runs it 
- `exit` to leave the machine in bash

### Bash Commands - Can be used within the machine
- `sudo apt update` (Sudo=admin) - Updates the source list. 
- `mkdir` - Create new directory
- `nano` - Create/edit new file
- `cd` - Go to directory
- `ls` - View files in current directory
- `rm` - Remove e.g. file
- `rm -rf` - Remove folder

### Task 1
- `vagrant up` with ubuntu/xenial64
- `vagrant destroy`
- delete your vagrant file
- use vagrant init to create vagrant file with centos 7
- `vagrant up` again
- `vagrant destroy`
**Take note of machines being created in virtual box**


### Task 2 
- Create a vagrant box with ubuntu version 18.04
  - `"ubuntu/bionic64"`
- To log into the machine `vagrant ssh` and can do bash commands within
- Create a README.md file inside machine and write your school
  - Once ssh into the vb, it will act as bash so can do all the same commands such as touch README.md and nano etc.

## Setting up NGINX on URL/Domain
- Nginx is a high performance load balancer used to deliver content to the web. 
- After setting up a connection to vagrant box, -> `config.vm.network "private_network", ip: "192.168.50.4"` allows to connect it to a static ip
- An IP address is not suitable for a URL, so we can change/alias the domain name firstly by downloading the following plugin -> `vagrant plugin install vagrant-hostsupdater`
- Then can change the IP address to whatever we wish e.g. config.vm.hostname = "development.local"