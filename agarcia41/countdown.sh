#!/bin/bash
count=60
  echo "It's the final countdown!"
until [ $count -lt 0 ]
do
  white='\033[1;37m'
  red='\033[0;31m'
  echo -e "Countdown number ${white}$count"
  sleep 1
  let count=$count-1

done
