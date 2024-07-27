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
  echo -e "Function 5 executed."
}

task6() {
  echo -e "Function 6 executed."
}

task7() {
  echo -e "Function 7 executed."
}

task8() {
  echo -e "Function 8 executed."
}

task9() {
  echo -e "Function 9 executed."
}

task10() {
  echo -e "Function 10 executed."
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
    7)
      task7
      ;;
    8)
      task8
      ;;
    9)
      task9
      ;;
    10)
      task10
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

