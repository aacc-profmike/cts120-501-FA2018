#!/bin/bash
# DAD JOKES Script (version 2 with parameters)
# Craig Contardi (yes, a Dad...)
# CTS120 Introduction to Linux, Fall 2018
# Professor Mike Broyles
#
# This program queries a user three times to fill in the blank on a short joke. If they guess
# correctly, the program congratulates them. If they do not, then it tells them the correct word
#
# Version 2 adds in the ability to just display one of the three jokes by using the numbers 1, 2
# or 3 on the command line. Putting in no parameters displays all jokes in succession.
# initialize correct answers
punch1="dawned"
punch2="everything"
punch3="rice"
# set variables for number of correct guesses and percentage right
numright=0
# function show_joke which will display the selected joke or the next joke of the three
show_joke()
{
   echo "Joke #$1"
   case $1 in
      1) echo "You know, I stayed up all night wondering where the sun went,"
         echo "then it __________ on me";;
      2) echo "I remember the first time I saw a universal remote control... I thought to myself"
         echo '"well, this changes __________"';;
      3) echo "General Tso's Chicken from Asian King...\$7."
         echo 'Drink...$1.'
         echo -n "Getting home and realizing Asian King forgot to give you one of your containers:"
          echo " ____-less";;
   esac
}
# End function show_joke
#
# function show_answer which will evaluate the input to see if it matches the correct punchline
show_answer()
{
   case $1 in
      1) if [ "$punchline" == "$punch1" ]; then
            echo "Bingo!"
            let numright++
          else
            echo "incorrect-- the punchline is \"then it $punch1 on me\""
          fi;;
#
      2) if [ "$punchline" == $punch2 ]; then 
            echo "That's Right!!"
            let numright++
         else
            echo "Pretty creative, but the correct answer is \"well, this changes $punch2\""
         fi;;
#
      3) if [ "$punchline" == "$punch3" ]; then
            echo "You are correct!"
            let numright++
         else
            echo "Not bad, but I was looking for \"$punch3-less\""
         fi;;
   esac
}
# End function show_answer   
#
clear
# Check to see if a correct argument was provided
if [ -z "$1" ]; then
# Display all three jokes
# Provide instructions
   echo "Hello. You will see three jokes including MOST of the punchline, but missing one word."
   echo "Your task is to figure out the missing word and type it in. Use lowercase only."
   echo "I will tally your score at the end."
#
# loop the routine three times
   for i in `seq 1 3`;
   do
# Display the appropriate joke
     show_joke $i
#
# Read user input. it's case sensitive, just like Linux
     read -p "Please fill in the blank to complete the joke: " punchline
#
# Compare the input to the right answer, which will depend on which trip through the for-loop
     show_answer $i
# insert a blank line
     echo
#
   done
   echo  "You got $numright out of $i correct, a $[(numright*100)/i]% score"
   echo "Quitting. Good bye."
# Run the below code if an argument was provided on the command line
else
   show_joke $1
   read -p "Please fill in the blank to complete the joke: " punchline
   show_answer $1
fi
