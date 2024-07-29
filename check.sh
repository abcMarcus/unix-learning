#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'

# Function to prompt user for input if no argument is provided
prompt_for_input() {
  while true; do
    read -p "Please enter a number between 1 and 10: " input
    if [[ "$input" =~ ^[1-9]$|^10$ ]]; then
      ARGUMENT=$input
      break
    else
      echo -e "Invalid input. Please enter a valid number between 1 and 10."
    fi
  done
}

# check tasks
task1() {
  read -p "How many normal files and directory are in the task1 directory?" user_input
  if [[ "$user_input" -eq 6 ]]; then
    echo -e "Correct!"
  else
    echo -e "$RED Incorrect. $RESET Use the ls command to find out"
    return
  fi
  
  read -p "How many hidden files and directory are in the task1 directory?" user_input
  if [[ "$user_input" -eq 3 ]]; then
    echo -e "Correct!"
  else
    echo -e "$RED Incorrect. $RESET Use the ls -a command to find out"
    return
  fi
  echo -e "Task 1 completed$GREEN successfully$RESET"
}

task2() {
  if [[ ! -f task_2/file1234.txt ]]; then
    echo -e "$RED Incorrect. $RESET file1234.txt is not created at the correct location"
    return
  fi
  echo -e "Task 2 completed$GREEN successfully$RESET"
}

task3() {
  if [[ ! -d task_3/homework ]]; then
    echo -e "$RED Incorrect. $RESET the homework directory is not created."
    return
  fi
  if [[ ! -f task_3/homework/assignment.md ]]; then
    echo -e "$RED Incorrect. $RESET the assignment file is not created."
    return
  fi

  echo -e "Task 3 completed$GREEN successfully$RESET"
}

task4() {
  if ! diff task_4/quiz_template.md task_4/quiz_1.md > /dev/null 2>/dev/null; then
    echo -e "$RED Incorrect. $RESET the 2 files are not the same"
    return
  fi

  echo -e "Task 4 completed$GREEN successfully$RESET"
}

task5() {
  if [[ -f task_5/final/quiz_answer.txt ]]; then
    echo -e "$RED Incorrect. $RESET quiz_answer.txt should not be in the final directory"
    return
  fi
  if [[ ! -f task_5/quiz/quiz_answer.txt ]]; then
    echo -e "$red incorrect. $reset quiz_answer.txt is not be in the quiz directory"
    return
  fi
  if [[ $(cat task_5/quiz/quiz_answer.txt) != "quiz_answer12345" ]]; then
    echo -e "$RED Incorrect. $RESET quiz_answer.txt content does not match the orginal content.\nYou might have to download the orginal files again, if you lost it."
    return
  fi

  echo -e "Task 5 completed$GREEN successfully$RESET"
}

task6() {
  # checking drone
  if [[ $(ls task_6/Drone/DJI* | wc -l) -ne $(ls task_6/Drone | wc -l) ]]; then
    echo -e "$RED Incorrect. $RESET Some files in the drone directory does not start with DJI"
    return
  fi

  if [[ $(ls task_6/Drone/DJI* | wc -l) -ne 24 ]]; then
    echo -e "$RED Incorrect. $RESET Not all drone files are moved to the Drone directory."
    return
  fi
  
  # checking Movies
  if [[ $(ls task_6/Movies/2*.mp4 | wc -l) -ne $(ls task_6/Movies | wc -l) ]]; then
    echo -e "$RED Incorrect. $RESET Some files in the Movies directory does not end with .mp4 or is drone files"
    return
  fi

  if [[ $(ls task_6/Movies/2*.mp4 | wc -l) -ne 10 ]]; then
    echo -e "$RED Incorrect. $RESET Not all mp4 files are moved to the Movies directory."
    return
  fi
  
  # checking Pictures
  if [[ $(ls task_6/Pictures/2*.png | wc -l) -ne $(ls task_6/Pictures | wc -l) ]]; then
    echo -e "$RED Incorrect. $RESET Some files in the picture directory does not end with .png or is drone files"
    return
  fi

  if [[ $(ls task_6/Pictures/2*.png | wc -l) -ne 10 ]]; then
    echo -e "$RED Incorrect. $RESET Not all png files are moved to the Pictures directory."
    return
  fi
  
  echo -e "Task 6 completed$GREEN successfully$RESET"
}


# Main script logic
if [ -z "$1" ]; then
  prompt_for_input
else
  ARGUMENT=$1
fi

# Check if the argument is a valid number between 1 and 10
if [[ "$ARGUMENT" =~ ^[1-9]$|^10$ ]]; then
  case $ARGUMENT in
    1)
      task1
      ;;
    2)
      task2
      ;;
    3)
      task3
      ;;
    4)
      task4
      ;;
    5)
      task5
      ;;
    6)
      task6
      ;;
    *)
      echo -e "Invalid number. Please run the script again and enter a number between 1 and 10."
      exit 1
      ;;
  esac
else
  echo -e "Invalid argument. Please enter a number between 1 and 10."
  exit 1
fi

