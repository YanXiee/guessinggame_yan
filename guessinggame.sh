#!/usr/bin/env bash
# File: guessinggame.sh
function guessinggame {
	n=$(ls -1 | wc -l)
	echo "Guess how many files are in the current directory?"


	for i in {1..100}
	do
		read ans
		if [[ $ans -eq $n ]]
		then 
			echo "Congratulation! That's correct!"
			break
		elif [[ $ans -lt $n ]]
		then 
			echo "$ans is too small, try again:"
		else 
			echo "$ans is too large, try again:"
	fi
	done
}
