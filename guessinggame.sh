#! /usr/bin/bash
# function to get the no of files in a current directory
pwd_files(){
	no_of_files=`ls -la | grep ^- | wc -l` #only including the hidden files and regular files
}
# Calling the function (pwd_files)
pwd_files
echo "Please guess how many files are in current directory: \c"
# Asking user to guess the number of files in current directory
read num
num_test='^[+-]?[0-9]+$' # Represents a signed natural number
#Checking whether the entered number is natural number or not
if [[ $num =~ $num_test ]];then # if - 1
	# Looping until user get the correct guess
	while [ $no_of_files -ne $num ]
	do
		if [ $no_of_files -gt $num ] 		
		then	
			echo "Your guess is low. Please try again:"
			read num
		elif [ $no_of_files -lt $num ] 		
		then
			echo "Your guess is high. Please try again:"
			read num
		fi 
		
		if ! [[ $num =~ $num_test ]];then
			echo "You entered an invalid number(other than natural number). Exiting from the program"
			exit 1
		fi
	done
	echo "Congratulations!! your guess is correct"
else
	echo "You have entered an invalid number(other than natural number). Exiting from the program"
	exit 1
fi # if - 1

