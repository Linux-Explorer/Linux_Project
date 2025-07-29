
#!/bin/bash

read -p "Enter a number: " num

if [ $((num % 2)) -eq 0 ]; then
    echo "Number is divisible by 2"
else
    echo "Number is not divisible by 2"
fi

