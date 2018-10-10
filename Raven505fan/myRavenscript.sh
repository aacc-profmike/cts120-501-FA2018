#!/bin/bash
#
# This script asks a simple question
# and responds based on the user input
#
# Let's ask out question
echo "Who do you prefer in Fantasy Football, Odell Beckham or Tyreek Hill?"

# Let's get their opinion
# and assign it to the OPINION
# variable
read -p "Enter your choice: " choice

# Next, the script will respond based
# on what they have entered
#
# NOTE: Bash is VERY picky.
# Notice exactly where there are spaces
#
if [ "$choice" == "Odell Beckham" ]; then
 echo "That's nice... But I like Tyreek Hill better."
 exit
fi

if [ "$choice" == "Tyreek Hill" ]; then
 echo "Good deal! I like Tyreek Hill  better as well!"
else
 echo "Sorry... I did not understand what you entered"
fi


