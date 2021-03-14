echo " How many files are in the current directory ? "
function congrats {
	echo " Congratulations, you guessed right"
}
function try {
	if [[ $1 -gt $2 ]]
	then 
		echo " Your guess is low, try again "
	elif [[ $1 -lt $2 ]]
	then
		echo  " Your guess is high, try again "
	fi
}
result=$(ls | wc -l )
read input
while [[ $result -ne $input ]]
do
	try result input 
	read input  
done 

congrats
