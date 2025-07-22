#!/bin/bash


#Calculate the number of days beetween two days

# Prompt user for input

read -p "Enter the first date :" date1
read -p "Enter the second  date :" date2

# Convert dates to Unix timestamps

time1=$(date -d "$date1" +%s)
time2=$(date -d "$date2" +%s)

# Check if date conversion was successful
if [ -z "$time1" ] || [ -z "$time2" ]; then
  echo "Invalid date format. Please use a format like 'Jan 1, 2024'."
  exit 1
fi

# Calculate difference in seconds and convert to days
diff=$((time2 - time1))
secondsinday=$((24 * 60 * 60))
days=$((diff / secondsinday))

# Display the result
echo "The difference between $date2 and $date1 is $days days"

