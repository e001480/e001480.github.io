README.md:
	touch README.md
	echo "The guessing game script" >> README.md
	echo "File created on:" >> README.md
	date >> README.md
	echo "with this number of lines:" >> README.md
	#wc -l guessinggame.sh >> README.md
	cat guessinggame.sh | wc -l >> README.md
	
