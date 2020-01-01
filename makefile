README.md: guessinggame.sh
	echo "The title of the project is: \n **guessinggame_yan** \n" > README.md
	echo "- The date and time at which make was run is: \n" >> README.md
	date '+%d/%m/%Y %H:%M:%S' >> README.md
	echo "- The number of lines of code contained in guessinggame.sh is: \n" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
