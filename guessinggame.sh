#!/usr/bin/env bash
# File: guessinggame.sh
function guessinggame {
	n=$(ls -1A | wc -l)

	ans=0
	echo "Please guess how many files in the current directory:"

	while [[ $ans -ne $n ]]
	do
		read ans
		if ! [[ "$ans" =~ ^[0-9]+$ ]]
		then 
			echo "Sorry integers only!"
		elif [[ $ans -lt $n ]]
		then
			echo "$ans is too small, try again:"
		elif [[ $ans -gt $n ]]
		then
			echo "$ans is too large, try again:"
		else 
			echo "That's correct! Well done!"
		fi
	done
	
}

guessinggame


