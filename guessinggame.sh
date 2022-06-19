echo "Enter a number to guess total files in current directory:"
read response

files=$(ls -a | wc -l)

function check {
	if [[ $response -lt $files ]]
	then
		echo "Your guess was too low. Enter your guess again:"
		read response
		input

	elif [[ $response -gt $files ]]
	then
		echo "Your guess was too high. Enter your guess again:"
		read response
		input
	else
		echo "Congratulations! You have guessed correctly..."
	fi
}

function input {
	if [[ $response =~ ^[0-9]*$ ]]
	then
		check

	else
		echo "Please enter a valid input:"
		read response
		input
	fi
}

input

while [[ $response -ne $files ]]
do
	input
	check
done
