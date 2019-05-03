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
