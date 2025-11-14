#!/usr/bin/env bash

count_files() {
    ls -1 | wc -l
}

correct=$(count_files)

echo "Guess how many files are in the current directory:"
read guess

while true
do
    if [[ $guess -eq $correct ]]; then
        echo "Correct."
        break
    fi

    if [[ $guess -lt $correct ]]; then
        echo "Too low."
    else
        echo "Too high."
    fi

    read guess
done
