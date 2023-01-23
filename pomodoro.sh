#!/bin/bash

pomodoro_count=0

while true; do
  # Set the duration of the Pomodoro in minutes
  duration=25
  echo "Starting Pomodoro for $duration minutes..."
  sleep $((duration * 60))
  echo "Time's up! Take a break."
  pomodoro_count=$((pomodoro_count+1))
  
  if [ $pomodoro_count -eq 4 ]; then
    duration=15
    pomodoro_count=0
  else
    duration=5
  fi
  
  # Play a sound
  paplay /usr/share/sounds/freedesktop/stereo/bell.oga
  # Send a notification
  notify-send "Pomodoro Timer" "Starting break, Take a break!"
  echo "Starting break for $duration minutes..."
  sleep $((duration * 60))
  echo "Break's over, get back to work!"
  # Play a sound
  paplay /usr/share/sounds/freedesktop/stereo/bell.oga
  # Send a notification
  notify-send "Pomodoro Timer" "Break's over, get back to work!"
done
