# 1.1 Think About Time Reflection
For this section, I studied the effectiveness of the Pomodoro Technique and mindfulness. I intend to use the Pomodoro Technique as a form of time boxing while practicing mindfulness in my daily life both inside and outside of Dev Bootcamp.

For reference, time boxing is a term used to describe a period of time that is set aside for working before a short break period that is taken to evaluate one's work.

I have taken a shine to the Pomodoro technique. I have downloaded a program for OSX called Focus that will limit my access to certain websites during a set period of time. Since there is a 25 minute Pomodoro setting on the program, I am able to set a timer at the top bar of my screen for a 25 minute period. I have also put a physical cooking timer on my desk which I have set to a 5 minute default setting. Between these two timers, I intend to manage my study and break time more effectively and will box my time accordingly. 

I first discovered mindfulness around a year ago when I saw a Google Talk by Dr. Jon Kabat-Zinn in which he described. Having previous experience in practicing Buddhist meditation, I was delighted to hear that the benefits of similar forms of meditation were being widely studied and proven effective at improving the faculties of its practicioners. After listening to his guided meditations and following the directions, I was soon an enthusiastic convert to this method of practice. From the attached articles, I learned that meditation can cause long term changes in brainwave patterns as well as an increase in gray matter throughout the hippocampus and frontal areas of the brain. Though meditation is difficult to practice, I aim to keep it as a part of my daily life - even if I only have the oppotunity to meditate a few minutes out of every day.

So far, I believe the combination of these techniques has made me more thorough and mindful in the way that I study and I will continue to use these techniques for the remainder Dev Bootcamp.

# 1.2 The Command Line Reflection

#### 1. What is  a shell? What is "bash?"
A shell is a program which houses the interface for the command-line. "Bash" is an acronym for Bourne Again Shell which is the shell which Macs and modern Unix computers run on



#### 2. What was the most challenging for you in going through this material?
To be honest, every explaination of file handling made no sense to me until I tried it by myself repeatedly. I couldn't figure out issues with file permissions using the mv and cp commands until I realized that I had to reformat the way I was writing out directories.


#### 3. Were you able to Successfully use all of the commands?
I happy to say that after some trial and error, I managed to use all of the commands successfully. Grep and less took some extra work and figuring out options took extra research, but I feel comfortable working in the command line environment for the time being.


#### 4. In your opinion, what are the most important commands and arguments to know?
You're not going to be able to do anything without the cd and ls commands. Mastering basic navigation is the first major step to understanding the command line. I can imagine the grep comman is extremely useful for development.


#### 5. Can you remember what each of the following does off the top of your head? Write what each does.

My apologies if this reads like a boring technical manual, but I write down what I learn as a mean of understanding it so formatting is very important to me.

##### pwd (Print Working Directory):
This command is used to display the directory that the user is currently working in within the command line. This can simply be executed by typing pwd within any directory.

###### ex:
> pwd
(May display) /users/Adam/Desktop/



##### ls (List Files and Directories): 
This command will display all files and directories within the user's current working directory on the command line. Additional information on the size, modification dates and user permissions can be viewed by adding a -l option to the end of this command. Hidden files beginning with '.' can additionally be viewed by adding -a option to the end of this command.

###### ex:
> ls -a
(Will display all files and hidden files within the working directory)



##### mv (Move or Rename File): 
The mv command can be used to rename or move a file or directory. This can be done by typing to command followed by the file or directory that needs to be moved or renamed and followed again by the file or directory that previous file/directory is going to be moved or renamed to. If a file name proceeds another file name or a directory name proceeds another directory name, that file or directory will be renamed.

###### ex 1:
> mv test.txt testing.txt
(Will rename test.txt to testing.txt)

###### ex 2:
> mv test.txt /Desktop/Bacon/
(Will move test.txt into the Bacon folder)



##### cd (Change Directory):
This is the command that is used for navigating between directories. The user can navigate into a child directory by typing the directory after the command. To access a parent directory, the user can write '..' and the command line will use that as a queue to me upwards in the folder hierarchy. To navigate to the last directory accessed, users can type 'cd -'

###### ex: 
> cd Desktop
(Will access the Desktop folder)
> Desktop/>cd ..
(Will return to the main folder)
> cd -
(Will return back to the Desktop folder)



##### ../ (Parent Directory): The two elipses are used to represent the parent directory of the working directory. This can be used in combination with one another to represent ascending parent directories or in combination with other directory names.

###### ex:
> Desktop/Parent_Test/Child_Test> cd ../Child2_Test
(Will move the working directory from Child_Test to Child2_Test)



##### touch (Create File): Using this command will create a file in the working directory.

###### ex: 
> touch HelloAll.txt
(Will create an empty text file called HelloAll.txt) 



##### mkdir (Make Directory):
This will create a directory within the working directory.

###### ex:
> mkdir New_Folder
(Will create a directory within the working directory called New_Folder)



##### less(Terminal File Browser): 
The less command can be used as a means of scrolling through files.

###### ex:
> less longfile.txt
(Will open longfile.txt and the space bar and b keys can be used to scroll forward and backward through pages respectively)



##### rmdir (Remove Directory):
This will remove the directory that is given following this command.

###### ex:
> rmdir Desktop
(Will remove the Desktop directory assuming it exists within the working directory)



##### rm (Remove File):
This command will remove the file proceeding the command. Adding a -f option will force the deletion of the file.

###### ex:
> rm -f example.txt
(Will force the removal of example.txt)



##### help (Built in bash help):
This command displays the bash's help file containing information on any valid command that is added after it.

###### ex: 
> help rm
(Will display information on how to use the rm command)



##### grep:
This command allows you to search one or more files for individual lines that contain a given string of characters. This can be modified with the -r option which will search for the string in all files in a given directory. When modified with the -w option, the file or files that are searched will display only the results that match a word. You can also modify the search string by adding spaces before and after the string for a similar result.

###### ex:
> grep -w "grease" longfile.txt longfile2.txt
(Will search for the word "grease" within longfile.txt and longfile2.txt and display the lines which contain it)

# 1.4 Forking and Cloning

#### Creating a New Repository

To create a new repository on GitHub, first, enter your personal profile page. On the navigation bar at the top of the page, you will see a plus-shaped icon. Clicking on that icon will bring down a dropdown menu. Within the dropdown menu, click "New repository". Select the owner of the repository - which in this case will be you - and then fill in the name for your repository. Add your own description below if desired. Select "Public" as your next choice unless you want your repository to be seen only by you. Check the box marked "Initialize this repository with a README and then change the license in our case to "MIT". Then click "Create repository."

#### How to Fork Repositories

Sometimes, in development, you will want to work on someone else's repository on your own time in your own environment. Luckily, you can copy their repository onto your personal GitHub account so you can dissect and make improvements or modifications on it. This process is called forking.

To fork a repository, you will need to locate said repository on the GitHub site. Click the repository name and then look on the top right hand side of the window. Near the top bar, you should see a button that says "Fork". Once you click on that button, a forked version of that repository will now be available in your personal profile.

#### How to Clone Repositories

Cloning a repository is a way to copy the repository from GitHub onto your local machine. This will aid you in pushing and pulling repositories from and onto GitHub in the future. To do this, open your command line and navigate to the directory which you intend to clone the repository into. Next, use your web browser to navigate to the repository you wish to clone. Toward the bottom right hand of the web-page, you will see a bar that says "HTTPS clone URL" under that text, there is a URL in a small box. Copy that url and go back into the command line. In the command line, type "git clone " and then paste the url and hit Enter. You have successfully cloned the repository!

#### What struggles did you have setting up git and GitHub? What did you learn in the process?

My biggest struggle in setting up Git and GitHub was actually figuring out what git and GitHub are. I had tried half-heartedly to figure it out on my own a few months ago and just couldn't get past the technical jargon ("What's a bash?") but now I have a much more clear picture of what it is. Now that I know this, the branching and the cloning suddenly don't seem so intimidating and I am able to navigate through git without hitting all of the jargon roadblocks.