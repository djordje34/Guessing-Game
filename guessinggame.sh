#!/usr/bin/env bash
# File: guessinggame.sh

function getthecount {
  cnt=$(find . -maxdepth 1 -type f|wc -l)
  echo $cnt
}

count=$(getthecount)
echo "Hello! Welcome to the guessing game!"
echo "Guess the number of files in this directory"
read num

while [[ $count -ne $num ]]
do
  if [[ $count -gt $num ]]
  then
    echo "Higher..."
    read num
  elif [[ $count -lt $num ]]
  then
    echo "Lower..."
    read num
  fi
done

echo "Congratulations! You guessed correctly!"