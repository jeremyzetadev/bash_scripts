#!/bin/bash


#SUBSTRING by *expression*
line="This is a test line with a string."
# search_string="test"

if [[ "$line" == *"$1"* ]]; then #by first argument
# if [[ "$line" == *"$search_string"* ]]; then
    echo "Line contains the string: $search_string"
else
    echo "Line does not contain the string: $search_string"
fi


#SUBSTRING by *regex*
# line="Another line with numbers 123 and symbols !@#."
# search_pattern="[0-9]+"
#
# if [[ "$line"==~$search_pattern ]]; then
#     echo "Line contains a number"
# else
#     echo "Line does not contain a number"
# fi


#SUBSTRING by *grep*
# line="This line will be checked by grep."
# search_string="grep"
#
# if echo "$line" | grep -q "$search_string"; then
#     echo "Line contains the string: $search_string"
# else
#     echo "Line does not contain the string: $search_string"
# fi
