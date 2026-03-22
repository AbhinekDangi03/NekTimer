#!/bin/bash

echo "Hello There, Abhinek"
echo "What Are You Working On This Session"
read -r WORK

echo "How long do you want your duration to be?"
echo "Enter a number (in minutes)"
read -r DURATION

FILE="timer_log.csv"
DATE=$(date "+%d-%m-%y")
TIME=$(date "+%H:%M")

echo "$DATE, $WORK, $DURATION, $TIME" >>$FILE

SECONDS=$((DURATION * 60))

notify-send -t 8000 "Initialising The Timer -Archy" "Timer Set for $DURATION Minutes."

echo "Have A Productive Session -Archy"

i=$SECONDS
while [ $i -gt 0 ]; do
  echo "Time Left: $i seconds.\r"
  sleep 1
  ((i--))
done

notify-send -t 10000 "You Have Successfully Completed session of $DURATION Minutes" "For More, Please Redirect To The Terminal -Archy"
echo "Good Work -Archy"
