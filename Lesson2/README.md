---
title: Introduction to Git
output: pdf_document
---
# Introduction to Git
A few git commands are `git`, `git init`.

# Create a folder
So first we create a folder and then access it with cd  
`mkdir NAME; cd NAME` and run `git init` so that it can create a clone and upload it into a repository on GitHub.

# Create an empty file
Create a file/files and write something in it/them.  
`touch NAME.txt` to create a file and then `vim NAME.txt`

# New Repository in GitHub
Go to GitHub and create a repository and make it public.

# Public Key / Private Key
So first you generate a key  
`ssh-keygen -t ed25519` or `ssh-keygen -t rsa`  
Then you use cd to exit everything  
and then you type this command to figure out the key code  
`cat ~/.ssh/id_ed25519.pub` or `cat ~/.ssh/id_rsa.pub`  
Then copy the code and go to GitHub > Settings > SSH and GPG Key > New SSH Key  
Now give it a name and paste the code.  

# Upload to new repo
now use `cd /cloud/project/NAME` to get to the directory you want to upload  
now use `git add .` which adds like a git file thingy that is necessary for upload  
now use `git config --global user.email "your_email@example.com"`  
now use `git commit -m 'NAME YOUR COMMIT'` to tell R what to upload  
also use `git remote add origin git@github.com:USERNAME/REPONAME.git` to tell R in which repository to upload  
Ok so now it gets complex  
So first use `ssh -T git@github.com` to tell R which GitHub you are using  
And now use `eval "$(ssh-agent -s)"` to start up your ssh-agent  
Then use `ssh-add ~/.ssh/id_ed25519` or `ssh-add ~/.ssh/id_rsa` to add the code to your ssh agent  
and finally use `git push origin master` or `git push origin main` to upload