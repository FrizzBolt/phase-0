
##Tracking Changes Reflection

#### How does tracking and adding changes make developers' lives easier?

By tracking and adding changes, developers can view and review the progress of their repository while contributing to the code. This allows several people to collaborate and spot check one anothers' work thereby making it less likely for errors to be merged into the code while minimizing workflow disruption.


#### What is a commit?

A commit is best described as a snapshot of the project at the time that the commit was made. Each commit can contain a message from the user with information pertinent to the update. The user can then navigate between commits or edit (or reset to) previous commits if he or she so chooses.


#### What are the best practices for commit messages?

A commit message should be kept to under 50 characters if possible. If a longer explanation is necessary, two spaces below the short summary of the commit you can include a longer explanation. This should also not use the imperative mood in the subject line and a you should not use a period at the end of this line.
Wrapping the text to 72 characters is also important as the git log does not automatically wrap text so rather than have the text flying over off of the edge of the window, it can be read in a normal fashion.
It is also acceptable to use bullet points in the longer explanation provided the user follows the 72 character wrapping rule.


#### What does the HEAD^ argument mean?

HEAD is a pointer that references the most current commit in a git branch.

Head^ is a shortened way of referring to HEAD^1 which is the second most recent commit and is the next step down the branch. Each commit has a tree value that references the SSH value of commit that came before it and git commits are all linked town this tree.

HEAD^2 would be the next commit down the the branch and then HEAD^3 and so on.


#### What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages of git change are as follows. There's the working directory which resides on the local computer and does not include staged changes to the final GitHub Repository. There's also the staging area which contains local files that will add to, remove, or modiify the local copy the repository at the next commit. The third stage of git change is the online repository where the public copy of the code is housed. This is modified when the local user pushes the local branch or commit. The information from the online repository can be retrieved and brought to the working directory by means of cloning or pulling.

#### Write a handy cheatsheet of the commands you need to commit your changes?

**git clone GitHub-clone-url**
Clone the GitHub repository at the URL to the local machine

**git commit -m "50-Char-Message"**
Commit all staged items and add a message for git log.

**git checkout branch-name**
Move to a new branch.

**git checkout -b branch-name**
Create and move to a new branch

**git push origin branch-name**
Push branch to Github

**git pull**
Pull current changes from GitHub.

**git branch -d branch-name**
Delete branch

**git status**
Check the status of staged, unstaged, and modified items.

**git log**
View log of previous commits.


#### What is a pull request and how do you create and merge one?

A pull request is a request submitted by a user to the owner of a repository.  The owner can then review the changes made to the repository on GitHub. A pull request notification will be visible on the sidebar on the repository's GitHub page and another notification will appear under the title of the repository. This will then display the changes in each file as well as any comments to the owner. The owner can then review, reject, comment on, or merge the request.

#### Why are pull requests preferred when working with teams?

Pull requests allow the owner of the repository to review and compare code changes before merging into the repository on GitHub. This way, multiple changes can be made and tracked and one or more users can track and look over code changes without conflict. This gives the creator of the repository some level control over what the public ultimately gets to consume while leaving opportunity for collaboration open as well.