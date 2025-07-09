#!/bin/bash

# Define the file to search for
FILE_TO_FIND="your_file.txt"

# Define the starting directory for the search (e.g., current directory)
SEARCH_DIR="." 

# -exec: executes a command for each found directory
find "$SEARCH_DIR" -type d -exec bash -c '
    DIR="$1"
    FILE="$2"
    if [ -f "$DIR/$FILE" ]; then
        echo "File \"$FILE\" found in directory: $DIR"
    fi
' _ {} "$FILE_TO_FIND" \;

# If file Exists
# FILE="/path/to/your/file.txt"
# if [ -f "$FILE" ]; then
#   echo "File '$FILE' exists."
# else
#   echo "File '$FILE' does not exist."
# fi

# If Directory Exists
# DIRECTORY="/path/to/your/directory"
# if [ -d "$DIRECTORY" ]; then
#   echo "Directory '$DIRECTORY' exists."
# else
#   echo "Directory '$DIRECTORY' does not exist."
# fi
