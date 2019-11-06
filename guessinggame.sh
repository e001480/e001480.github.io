#!/usr/bin/env bash
# File: guessinggame.sh

function verify {

	if [[ $guess == $exact ]]
	then
	  echo "Correct. Congratulations!"
	  cont=false
	elif [[ $guess -gt $exact ]]
	then
	  echo "Too high. Try again"
	  read guess
	else
	  echo "Too low. Try again"
	  read guess
	fi
}

echo "How many files are in the current directory?"
read guess

exact=`ls -l | wc -l`
cont=true

while ( $cont )
do
	verify
done
