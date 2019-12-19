#!/bin/bash

laptop="laptop"
desktop="desktop"

echo "\nCleaning up $1..."

if [ $1 == $laptop ]
then
	yay -Sc
	yay -Rs texlive-most opencv2
elif [ $1 == $desktop ]
then
	yay -Sc 
	yay -Rs texlive-most
fi

echo "All cleaned up!\n"

