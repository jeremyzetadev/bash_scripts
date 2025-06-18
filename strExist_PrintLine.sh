#!/bin/bash

echo "apple", "book", "cat" > file.txt
echo "dad", "food", "girl" >> file.txt
echo "god", "hey", "linux" >> file.txt
echo "out", "owl", "rice" >> file.txt
echo "say", "toy", "zebra" >> file.txt

if [ $# -ne 1 ]
then
    echo "usage: $0 'regex'"
    exit 1
fi

grep "$1" file.txt
