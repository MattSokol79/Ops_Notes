# ENVs AND CI/CD Mini project videos

## Timings

2 days to revise and make good video.

## Summary

Now that we've created:

 - Our Dev Environment & (simple) Production Env
 - A CI Pipeline that Test & Merges
 - A CD Pipeline that Deploys to AWS 

We are really seeing the prower of DevOps! 

To make sure we have an example of these things I want you to go clean your repo, document best practices for each section and then make a series of small video explain and doing a little Demo. 


## Tasks

To deliver Videos:

**You can choose to explain all in video or be prepared to talk over your video explaining the topics here**

* Dev Environment < 5 minutes
	* How it works (Short)
	* What is provision (Short)
	* How is it done with Vagrant? (Short)
	* All tests passing
	* Documentation (Not necessarily all part of video)
		* Intro, Pre requisits and intructions
		* Also have a section on:
			* What is a Dev Env
			* Why we do them, what is virtualization
		

* CI Pipeline < 5 minutes
  * What is CI CD
  * What is Jenkins
  * What is the testing environment
  * **Good practices in Jenkins** - Where does the code run? -- anwser this question to make sure your demonstrate understanding of environments  
  * Show CI working
  * Show it merging

* Deployment Environment: 
	* What is the cloud? 
	* What is AWS? 
	* How does this environment differ from Dev Env?
	* How do you setup an EC2 
		* SECURITY SSH & Security Groups
			* what is an ssh key
			* why should we keep these safe?
			* What is a security gorup? 
			* How to allow your IP?
				* why it should be blocked
		* How to SSH into a VM
		* How to provision a VM in AWS? 
	* Show working APP

* CD Pipeline < 5minutes
	* how does CD fit into the CI CD? 
	* What does it aim to do? What do you want to do on your Jenkins? 
	* Show it working! 
	* Show all pipeline working! 
