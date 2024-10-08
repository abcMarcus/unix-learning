# welcome!

## instruction
Read the following instructions and get started!
1. Open 2 instance of the terminal in the directory you just cloned. 
2. On the first terminal, run `cd task_<number>` to move the lesson location.
3. Read below and complete each of the tasks
4. On the second terminal, run `./check.sh <number>` to verify if you have done the task correctly!
5. On the first terminal, Use `cd ..` to return to previous directory and repeat the steps for the next task!

## tasks
### task 1 - viewing files
You can use the `ls` command to view the files and sub directory in your current working directory. In most system, the directorys are bolded and the files are not bolded to show the difference.

Any file or folder that starts with a dot character (`.`) is treated as hidden.

You can view them using the `ls -a` command. The `-a` or `--all` flag display all files.

How many normal files and how many directory are in the task\_1 directory?

How many hidden files are there?

### task 2 - creating file
The `touch <filename>` command allows you to create a new empty file.

Create a file named `file1234.txt`

### task 3 - creating directory
The `mkdir <dir name>` command allows you to create new directory.

Create a directory named `homework`
Inside this new directory, create a file named `assignment.md`

**Tips:** you can sepcify paths inside a directory with the directory name follow by a slash charater (`/`). For example: `work/monday.txt` means the file `monday.txt` inside the directory `work`.

### task 4 - moving files
The `cp <source> <destination>` command allows you to copy files.

Can you copy the `quiz_template.md` file and with the new name: `quiz_1.md`


### task 5 - moving files
The `mv <source> <destination>` command allows you to move files.

You are given 2 directory: `quiz` and `final`. The file `quiz_answer.txt` is incorectly placed into the final directory instead of quiz directory, can you move it?


The `mv` command also allows you to rename files if the given destination is not a directory.

There is a file named `final_answer.txt` in the final directory, can you rename it to `.answer.txt` so that it is hidden?

# task 6 - wild card
Using the asterisk (`*`) allow us to specify a wild card. This allow you to move a large amount of files easily. For example, `*.txt` will select all files that ends with `.txt`.

Inside the Desktop dir, there is a mix of random files. Using wildcard complete the following:
- move all files starting with `DJI` to the Drone dir.
- move all images ending with `.png` into a directory named: Pictures.
- move all the videos ending with `.mp4` to the Movies dir.
