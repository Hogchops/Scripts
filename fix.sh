cd ~

file1=userprofile.sh
file2=.bash_profile

if [-f $file1]
then
		rm $file1
fi

source $file2
