#!/bin/bash

# Variables

WEATHER="0"
AVERAGE="0"
SUM="0"
DAY="0"

# Declaring my array

declare -a EDAY
EDAY=()

declare -a City
City=()

# First Question - Instructions and Which City

    echo "------------------------------------------------------"
    echo
    echo "Please enter the weather for the city that you want in"
    echo "fahrenheit for each day in a week and I will calculate"
    echo "an average of the week forecast."
    echo
    echo "---------------------------------------------------------"
    echo
    echo "Let's start by entering the city that you have chosen."
    echo
    echo -n "City: "; read CITY
    echo
          City=("${City[@]}" "$CITY")
    echo "---------------------------------------------------------"

# Splits each word from the array of City

for item in "${City[@]}"; do

  eachcity=( $item )

done

    echo
    echo "Enter the weather for each day."
    echo



# Script that tells you to input the weather for each day
# and also averages the weather for a week.

while true; do

    # Prompt for weather for each day
    echo -n "Weather for day $[$DAY + 1]: "; read WEATHER;

    # Adding string and integer to my array. Example: Day x: Weather°F
    EDAY=("${EDAY[@]}" "Day $[DAY + 1]: $WEATHER°F")


  # if $WEATHER equals is not equal to a number / digit  then it would tell you to restart

   if [[ "$WEATHER" != [[:digit:]]*  ]]; then

    echo "---------------------------------------------------------"
    echo
    echo "Sorry you have an invalid entry."
    echo "Please start all over again and"
    echo "make sure that they are numbers."
    echo
    echo "---------------------------------------------------------"
    break

  # if you have inputed 7 days of data this will stop and show your result
  # if $DAY is = to 6 because 0 is counted as 1

  elif [ $DAY == "6" ]; then

    echo
    echo "---------------------------------------------------------"
    echo
    echo "---------------> Forecast for ${eachcity[@]^} <---------------"
    echo "-------------------------------------------------------------"
    echo "| "${EDAY[0]}" | "${EDAY[1]}" | "${EDAY[2]}" | "${EDAY[3]}" |"
    echo "-------------------------------------------------------------"
    echo "| "${EDAY[4]}" | "${EDAY[5]}" | "${EDAY[6]}" | "
    echo "----------------------------------------------"
    echo "--------------------------------------------------------------"
    echo "| The total of the 7 days forecast is $SUM degrees fahrenheit |"
    echo "--------------------------------------------------------------"
    echo
    echo "In the past 7 days in ${eachcity[@]^} the forecast had"
    echo "              --------------------------"
    echo "an average of | $AVERAGE degrees fahrenheit |"
    echo "              --------------------------"
    echo
    echo "---------------------------------------------------------"
    break

  fi

# Calculates the total weather that we had added
SUM=$[$SUM + $WEATHER]

# Calculates the day
DAY=$[$DAY + 1]

# Calculates an average from the total and days
AVERAGE=$[$SUM / $DAY]

done