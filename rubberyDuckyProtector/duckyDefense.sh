#!/bin/bash
strike_count=0
last_time_struck=0
timePriorStruck=$(date +%s%N)
timeStruck=$(date +%s%N)
while true
    do
        read -r -n 1 -s last_struck
        timeStruck=$(date +%s%N)
        timeBetweenStrikes=$((timeStruck - timePriorStruck))
        if [ "$timeBetweenStrikes" -lt 20000000 ]
            then
                strike_count=$(($strike_count + 1))
            else
                strike_count=0
            fi
        if [ "$strike_count" -ge 5 ]
            then
                xdg-screensaver lock
            fi
        timePriorStruck=$timeStruck
    done