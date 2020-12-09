
A development environment is a workspace for developers and programmers to write and change code, it is usually set up on local computers. The purpose of the environment is for a developer to have a place where they can safely test their code without worrying about it affecting a live website or application.  

Vagrant is an open source Linux distrtibution that creates environments through virtualisation. Virtualisation is the creation of virtual entities such as in this case a virtual machine with a specific OS which can be created through the use of vagrant boxes. Vagrant boxes contain all the necessary components to create a virtual machine with a desired OS. 
The newly created VM is completely separate from your computer software and hardware which is extremely powerful as it ensures that the code that is written for that OS and VM will always work evading the issue of "it works on my computer". 

Provisioning means providing the machine with all the necessary packages and programs in order for it to have the desired functionality. One of the aspects of vagrant is that all of the installed packages are lost when the machine is destroyed, thus provisioning ensures that everytime the machine is turned on, all of the necessary programs and packages are automatically installed onto it.

CI CD is a widely used practice used in development and operations it is a method to frequently deliver apps to customers by introducing automation into the stages of app development. It stands for Continous integration delivery and deployment.
CI is a practice which requires developers to commit and merge code to a shared master branch multiple times a day, the code is then automatically built and tested by an automation server giving feedback within minutes. Jenkins is one an automated server that is capable of building CI CD pipelines.

Continous delivery is an extension of this and focuses more on giving the developers the option to make their code live at any moment. In this case deployment is completed manually.

Continous deployment goes one step further where every change that passes all tests and stages of a pipeline is released to customers automatically

A testing environment is a separate computer or server that allows the developers to run tests on their code. In CI CD it is extremely important to keep all of the environments from development to test and live as similar as possible in terms of hardware and software configurations as this massively reduces  the risk of breakages.

Other good practices in CI CD include keeping the pipelines as fast as possible, ensure the pipelines have all necessary safety precautions, naming of pipelines should follow a convention in order to reduce the risk of confusion and version control systems like GitHub should be used alongside Jenkins.

The cloud refers to servers located all around the world which can be accessed over the Internet. It allows users to access software and databased on those servers thus essentially allowing them to user computers remotely. 

Amazon web services is a cloud computing platform which provides a wide array of cloud services ranging from virtualisation to database management.

The deployment environment is where you can find all of your working code in an ideally usable application that can be accessed by clients and other users. It mainly differs from the development environment in that it only contains working code and should ideally only present the product as seen from the customers perspective. Any code pushed to the deployment environment should not have any bugs and should work as intended. However, all of the major environments should share very similar hardware and software configurations in order to reduce the risk of code breakages.

A ssh key pair is a set of access credentials that will allow us access to the instance. Due to the importance of ssh keys, it is essential that these keys are stored in a safe location within your machine, one possible location could be the ssh folder within the local disk

A security group acts as a virtual firewall for your instance to control inbound and outbound traffic. When you launch an instance in a VPC, you can assign up to five security groups to the instance. Security groups act at the instance level, not the subnet level. Therefore, each instance in a subnet in your VPC can be assigned to a different set of security groups.

- To open a specific port to your ip or to the world, simply *add* security rules when creating the AWS instance and specify which ports you wish to point to your own IP or to somewhere else

A ssh key pair is a set of access credentials that will allow us access to the instance. Due to the importance of ssh keys, it is essential that these keys are stored in a safe location within your machine, one possible location could be the ssh folder within the local disk

- Secure copy protocol (SCP) is a means of securely transferring computer files between a local host and a remote host or between two remote hosts. It is based on the Secure Shell (SSH) protocol.

The CD pipeline works with the CI pipeline to deliver code from the staging/testing environment to the live environments.