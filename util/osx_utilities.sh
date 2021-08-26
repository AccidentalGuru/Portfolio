#!/bin/zsh
# List App Store Downloads
find /Applications -path '*Contents/_MASReceipt/receipt' -maxdepth 4 -print |\sed 's#.app/Contents/_MASReceipt/receipt#.app#g; s#/Applications/##' 

# View file system usage:

sudo fs_usage 

# Find out which program is running on a specific port:

lsof -i:8080

# Rebuild the Spotlight index:

sudo mdutil -E /Volumes/DriveName 

# Enable text selection in Quick Look

defaults write com.apple.finder QLEnableTextSelection -bool TRUE  
killall Finder 

# Make a file of any size:

mkfile 1g test.abc 
(will create a file that is 1 GB called test.abc in the current folder)

# f you want to know which files are affected by changing a setting in a GUI:

Open terminal and type ‘sudo -s’ to get to a root prompt
Use this command to create a timestamp file: touch ~/timestamp
Change whatever setting you want to change. Something in System Preferences maybe
Use this command to find out which files have changed since creating the timestamp file:
find -x / -newer ~/timestamp > ~/ModifiedFiles.txt  
That will list all files that have a newer modified date than ~/timestamp. Just look in ~/ModifiedFiles.txt for the relevant file


