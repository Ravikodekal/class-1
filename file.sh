#!/bin/bash

echo "Enter the name"
read name

if [ -f $name ]; then
    
    echo "The given input $name is a file"

    if [ -r $name ]; then
        echo "The file has read permission"
    else
        echo "The file doesnot have read permission"
        echo "Adding read permission for the owner"
        chmod u+r $name
    fi

    if [ -w $name ]; then
        echo "The file has write permission"
    else
        echo "The file doesnot have write permission"
        echo "Adding write permission for the owner"
        chmod u+w $name
    fi

    if [ -x $name ]; then
        echo "The file has executable permission"
    else
        echo "The file doesnot have executable permission"
        echo "Adding executable permission for the owner"
        chmod u+x $name
    fi

