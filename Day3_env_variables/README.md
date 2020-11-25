# Environment Variables

- These exist globally on a specific environment or machine.
  - Generally you dont want to have too many of them.
  - And you can interpolate them into code and other services.

## Objectives
- What are variables vs Environment variables in bash
- Processes and child processes
- Default variables
- How to set the environment variables in bash

## Variables in bash
- Generally you use uppercase and assign using no space followed by the string or process.
- Set variables:
```BASH
MY_VAR=hello
```
- Read a variable using $ and echo
```BASH
MY_VAR=hello
echo $MY_VAR
> hello
```
`ll` -> Gives permissions in bash
`drwx` -> r=read, w=write, x=execute
`chmod +x <scriptfile>` -> Executes the script
`export MY_VAR` -> now running the script e.g. `./myscript.sh` will have the string "This is a line from my process" which was written in bash as well as hello (MY_VAR) -> SEE BELOW IN EXPORT SECTION

- These variables, are ***NOT ENVIRONMENT VARIABLES*** and exist only on the process (the current terminal i.e. close terminal -> variables gone).
- Once you restart the terminal or a new process these variables do not exist

## Child process
- When your terminal runs another file or bash script it makes a child process.
- A child process is basically a new terminal

## Export
- Send variables to child processes
- You can use `export` to make a variable available to child process
```BASH
MY_VAR=hello
export MY_VAR
./myscript.sh
> "This is a line from my process"
> "hello"
```

- This is still not permanent -> when you restart terminal, it will be lost.
`printenv` shows variables
`printenv grep "COOL"` -> Looks for the COOL variable which was set earlier
`COOL_AMAZING=42`

## Checking your Variables
- `printenv`
- `env`

## Making Variables persistent in computer
- The definitive response lies in understanding how individual terminals are created.
- The PATH taken 
- Each individual terminal has a path to conclude before opening for you to use it.
- To set a environment variable you are going to write in one of the files that it reads as it does its PATH. 

- You want to have this in .profile:
```BASH
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi
```
- And then you can write in .bashrc your variables

## Concluding
We covered:
- Variables Vs Local variables
- How variables run in script & child process
- How to create environment variables from variables
- How to make persistent variables that last between loggins





# Bash Task
## Wildcards 
- V. similar to SQL
- Wildcard characters are used to define the pattern for searching or matching text on string data in bash shell. 
- 3 main characters:
  - * -> Search for particular characters for zero or more times
    - e.g. `ls s*` -> Search all files whose name start with 's'
  - ? -> Search for a fixed number of characters where each ? indicates each charater
    - e.g. `ls ???pic.PNG` -> newpic.PNG i.e. 6 character file with pic at end
  - [..] -> Match with charaters of a defined range 
    - e.g. `ls [p-z]` -> Searches any file whose name contains character within p-z.

## Grep
- Searches the input files for lines containing a match to a given pattern list -> outputs the match.
  - e.g. `ls -a | grep .git` -> Searches for any files containing `.git` in the current directory and outputs them

## Streams and Redirects
- Redirects where youre going.
- Bash receives input and sends output as sequences or *streams* of characters. 
- Common commands:
  - `stdout` -> *standard output stream* which displays output from commands
  - `stderr` -> *standard error stream* displays error output from commands
  - `stdin` -> *standard input stream* provides input to commands.

***Two ways to redirect output to a file***
- `n>` -> Redirects output from file descriptor n to a file
- `n>>` -> Does the same **BUT** output is appended to the existing file instead of overwriting it 

## Grep and ps aux using piping
- `ps aux` is a **VERY** much used command to get detailed info about specific processes running on the system. 
  - Is a process running?
  - Who is running the process?
  - Which process is using higher memory or CPU?
  - How long has the process been running?

- Can use Grep in `ps -aux` to search for particular processes
  - e.g. `ps -aux | grep virtualbox` -> Finds any processes that are virtual boxes which are currently running in the system and outputs them for us to see thanks to grep.  
- Piping -> Lets you use the output of a program as the input of another one. So in the above example `|` allows us to specify where the grep needs to look for a virtualbox --> in the ps -aux.
  - i.e. first the `ps -aux` is run, and the output of that is used by grep 

## DEMO 
**Starting processes and sending to background**
- Start process like `sudo nano README.md` within the VM
- Send to background with `CTRL Z`
- Move the process back to foreground with `fg`

**Find the process**
- Run: `ps -aux | grep <process>` -> Finds the process currently running on the machine

**Killing process that is in the background**
- `ps -aux | grep <process>` -> Finds the process, then locate their ID number on the left and:
- To kill `sudo kill <ID No.>` -> kills the process

- `pkill <process>` -> Can also do the trick but if not specific enough, can kill some other process by accident. 

- Putting `&` after a process makes bash run those processes in the background 
