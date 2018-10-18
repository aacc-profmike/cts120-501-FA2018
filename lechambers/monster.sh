

#!/bin/bash
# Monster Microstory made by candy-lamb

# Here is a dump for some variables
SPOT=19 # When ran in modulo with %RANDOM will give a range of 0-20
# Add the 1 in the operand will make the range 1-20, like needed
DIE=0 # This will give us the variable to store that 20 sided die

# Enough chatter, though.
# It's hopeless. The monster will find you
clear
echo " ##################################### "
echo " ## YOU ARE TRAPPED IN A DARK ROOM. ## "
echo " ##################################### "
echo

echo "Hey... hey can you hear me? Over here... "
echo "* You make your way towards the voice* "
sleep 2
read -p "Who are you? >> " name
sleep 1
echo "Oh gosh am I glad to meet you, $name, I've been stuck in this
dark room for days now and- "
sleep 1
echo
echo " * A BLOOD CURDLING HOWL ECHOES THROUGHOUT THE ROOM *
"
read -n 1 -s -r -p "Press any key to Continue"
clear
echo "Before your new friend could continue their sentence, the
monster with you in this room pounces, and your ally lets
out a horrible scream.
"
sleep 4
clear
echo " ############################## "
echo " ## YOUR FRIEND IS NOW DEAD. ## "
echo " ############################## "
sleep 2
clear
echo "Whatever just happened, it's probably better you didn't see.
"
sleep 1
echo "Suddenly, you feel the warm air of an inhuman creature breathing
down your neck...you know what it is.
"
sleep 2
echo "You have been found by a werewolf! You're likely to be killed by it!"
sleep .5
echo "But look over there! A 20 sided die! If all those sessions of DnD
you've played are any indication, then you might yet survive this!
"
sleep 4

read -p "Do you roll the die? Enter 'yes' or 'no'. >> " decision

if [ "$decision" == "no" ]; then
echo "I hope you have made peace with your fate, $name."
sleep 2
clear
echo " You are dead. Game Over."
exit
fi

if [ "$decision" == "yes" ]; then
echo "You grab the 20 sided die, close your eyes and roll"
echo "with all of your might!
"
echo "If your roll ends up being higher than 16, you will
survive... maybe..."
let "DIE = $RANDOM % $SPOT + 1" #ROLL THAT DIE
echo "The Die clatters as it rolls across the ground."
sleep 3
echo "The tension is almost palpable, isn't it? "
sleep 2
clear
echo "You have rolled a $DIE."
sleep 1.5
fi

if [ "$DIE" -ge "16" ]; then
echo "--------------------------------------------------
You hear a rumble from behind you, as a werewolf hunter
crashes through the wall like the Kool-Aid Man!!"
echo "A silver bolt from their crossbow pierces through the
heart of the fearsome beast."
echo "The day is saved! Time to get out of here... how did you
end up here in the first place??

End."
exit
else
echo "Well... it was worth a shot. "
sleep 2
clear
echo " You are dead. Game Over."
exit
fi

