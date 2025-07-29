#!/bin/bash

echo -n "Enter a number: "
read num

if [[ $num -gt 0 ]]; then
    echo "The number is positive."

    if (( $num % 2 == 0 )); then
        echo "It is also even."
    else
        echo "It is also odd."
    fi

elif [[ $num -lt 0 ]]; then
    echo "The number is negative."

    if (( $num % 2 == 0 )); then
        echo "It is also even."
    else
        echo "It is also odd."
    fi

else
    echo "The number is zero."
fi
