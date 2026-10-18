
#!/bin/bash

# Simple Interest Calculator

read -p "Enter principal amount: " principal
read -p "Enter annual rate of interest (%): " rate
read -p "Enter time period (years): " time

if [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] &&
   [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] &&
   [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then

    interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
        'BEGIN { printf "%.2f", (p * r * t) / 100 }')

    echo "Simple Interest: $interest"
else
    echo "Error: Please enter valid non-negative numbers."
fi
