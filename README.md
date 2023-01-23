# Pomodoro Timer

A simple Pomodoro timer script created by ChatGPT

## Usage

1. Give execution permissions to the script:
```bash
chmod +x pomodoro.sh
```
2. Create an alias for the script:
```bash
alias pomodoro='./pomodoro.sh'
```
3. Install the libnotify library:
```bash
sudo apt-get install libnotify-bin
```
Run the script:
```bash
pomodoro
```
This script will run the Pomodoro technique with 25 minutes to work and 5 minutes to sleep, and after 4 times it will sleep 15 minutes always that the time over a alert is called.
