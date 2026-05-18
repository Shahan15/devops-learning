#!/bin/bash

#Create a script that takes two numbers as input and performs 
#basic arithmetic operations (addition, subtraction, multiplication, division).


calculator(){
    local num1="$1"
    local num2="$2"

    multiply=$((num1*num2))
    echo "$num1 multipled by $num2 equals: $multiply"

    add=$((num1+num2))
    echo "$num1 added by $num2 equals: $add"

    subtract=$((num1-num2))
    echo "$num1 subtracted by $num2 equals: $subtract"

    if [ $num2 -eq 0 ]
    then
        echo "Cannot divide by 0"
        exit 1
    else
        divide=$((num1/num2))
        echo "$num1 dividied by $num2 equals: $divide"
    fi
    exit 0
}

calculator 4 5
 