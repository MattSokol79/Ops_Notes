# Advanced Bash & Linux Cheat Sheet
Concise notes on bash and linux commands 

## Everything is a file
- Monitors, keyboards, directories --> they are all files!
1. There are not extensions! Files are just files that can then have different formats.

2. Case Sensitive

3. Spaces are hard - just avoid!

```bash
$ mkdir my documents
$ mkdir "my_documents"

$ cd my\ documents/
```
4. Hidden files with .
   
5. `rm`
   - `rm -rf` remove directories

6. Hidden files and folder defined with `.` at beginning 
   - Check using `ls -a` or `ll -a` for all
  
7. Flags for bash commands are options

8. Check options using `man <command>`


## Wildcards - Refer to homework in DAY3 for more detailed notes
- `*` -> Any number of characters 
  - e.g. `*.md` -> Any file ending in `.md`
- `[..]` -> List of specific characters
  - e.g. `ls [p-z]` -> Searches any file whose name contains character within p-z.
- `?` -> Specific number of characters
  - e.g. `??.md` -> Any file with 2 characters ending with `.md`

You can use these within `ls` with `grep` and other commands

## Permissions
- User, group and other
- Uses binary
  - Execute is `1`
  - Write is `2`
  - Read is `4`
- Can combine these to make a maximum of 7 options.

- Can also use add and remove of permissions using alias of r (read) , w (write) and x (execute)
- Can also alias the u (user), g (group), o (other).

`$ chmod g-x puppy.text` -> Group execute puppy file

## Root user
- A super user. 
- Can escalate priviliges using `sudo` command
- Can also make users `sudo users` list in the system to make other users super users

## Head, Tail and Sort
`$ head -n 2 example.txt` -> Outputs the first 2 lines of the txt
`$ tail -n 2 example.txt` -> Outputs the last 2 lines of the txt

## Streams - stdin, stdout, stderr
***stdin***
- Standard input of a command

***stdout***
- Standard output or the result of a command

***stderr***
- Standard error is the output error of a command

## Piping and Redirecting
### Redirecting `>` or `>>`
- The ability to capture the standard output *stdout* of a program and redirect it into a file. 
- `>` overwrites file
- `>>` appends to the end of the file
  - e.g. `ls example* > search_ls_exam.txt` -> Takes all of the example files and puts them into the `search_ls_exam.txt` file.
  - if you `>` into that file again, it will overwrite what was written in 
  - e.g. `ls *ppy* >> search_ls_exam.txt` -> Appends a puppy file into the `search_ls` file each time its run in bash.

***Redirecting STDERR***
- Standard error is a different output than standard output *stdout*.
- To capture this, you need something different!
  - You need to add a `2` before redirect/`>>`
    - *stdout has a stream id of 1 and stderr has a stream id of 2 which is why you use 2*
  - e.g `ls missing 2>> error_logs.txt` -> the `2` was key in capturing the error in `error_logs.txt`
    - `ls *py* missing >> all_logs.txt 2>&1` -> Will get an error log because `missing` doesnt exist but will print out `puppy` as that file exists. (`2>` to output the stderr) (&1 to get the stdout as well i.e. puppy) 
    - Basically `2>&1` => both stdout and stderr

### Piping `|`
- Captures the output of the first command and directs it as stdin to the next command after `|`
- `ls | sort | head -n 5 | tail -n 2 >> somefile_search.logs` -> Puts the output of all of these commands into the `somefile` file.

- `ps -aux` -> Shows processes on your machine by all users 

***sending to background***
- First `ps -aux` 
- Start a process e.g. `sleep 100 &` -> the `&` sends everything to the left of it to the background. 

***Grep - get regular expression.... (strings)***
- `ps -aux | grep sleep` -> finds the sleep processes in the background 

***Process killing***
- Find the PID (process id) through grep and can kill that specific process
  - e.g. `ps -aux | grep vagrant` -> Find all processes of vagrant
  - `sudo kill <PID>` -> Kill a specific vagrant process with its pid provided


## Bash Variables
**Define Dynamically**
`HELLO=THIS_AMAZING`

**Call using `$`**
`echo $HELLO`

- These only live on the current terminal/process, if you exit terminal after defining a terminal, and open a new one, it will no longer be there.

## Environment Variables
- If you want a variable to exist everytime you open a terminal (global variable) --> You need to add it to the PATH!!

- How to do that?
  - It reads files and locations before opening. Where do I write this variable?
  - ---> `.bashrc` or in `.profile` NOT IN BOTH
  - Following DRY ----> make `.profile` look and read `.bashrc` and only write in `.bashrc` 



## Bash PATH
- A bunch of files it reads in some order.
- Specific files that the terminal executes before opening and allowing you, the user, or another program to interact with it.
- This is a great location to set some variables. These can them be used by child processes.
- To be used by child process, it's useful to `export` the variable in the PATH. 


## Alias - NOT V IMPORTANT 
- Not going to be covered in lesson
- Example of an alias in a `.bashrc`
  - `alias cfb='vim ~/.bashrc'
    - literally just stick a command in there after the word alias and then the shortcut= then the command