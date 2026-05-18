#!/bin/bash
#Create a script that automates directory and file creation

file_operation(){
    timestamp=$(date)
    
    if [ -d $1 ]; then
        echo "The Directory Already Exists"
        echo "Removing Directory..."
        rm -r $1
        echo "Rerunning Setup..."
        file_operation "$1" "$2"
    else
        mkdir $1 && cd $1 && touch $2 
        echo "This file was made on: $timestamp" >> $2
        fileContent=$(cat $2)
        echo "Directory and File sucessfully made. $2 content: $fileContent"  
    fi  
}

file_operation my_directory my_file