all : README.md


README.md: guessinggame.sh
	echo "# Title of the project : Guessinggam" > README.md
	echo "Time execution :" >> README.md
	echo "`date` " >> README.md
	echo "Number of lines of code : " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
