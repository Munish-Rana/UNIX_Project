README.md: guessinggame.sh
	touch README.md
	echo "# TITLE: A Program to Guess Total Files in Current Directory" > README.md
	echo "\n" >> README.md
	echo "Date of Creation of README.md is:" >> README.md
	date >> README.md
	echo "\n" >> README.md
	echo "Total Lines in Code: $l" >> README.md
	cat guessinggame.sh | wc -l >> README.md
