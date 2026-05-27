#!/bin/bash

#Create a script that checks if a file exists and displays its permissions.

check_permissions(){
  read -p "Please provide a filename: " file


    if ! find . -type f -name "$file" ; then
        echo "File does not exist. Rerunning..."
        # check_permissions "$file"
    fi

}

check_permissions