#!/bin/bash
echo "Enter the 1st number:"
read num1
echo "Enter the 2nd number:"
read num2
echo "Select the operation (+, -, *, /):"
read op

if [ "$op" == "+" ]; then
    result=$((num1 + num2))
elif [ "$op" == "-" ]; then
    result=$((num1 - num2))
elif [ "$op" == "*" ]; then
    result=$((num1 * num2))
elif [ "$op" == "/" ]; then
    # Check if num2 is zero to avoid division by zero
    if [ "$num2" -ne 0 ]; then
        result=$((num1 / num2))
    else
        echo "Error: Division by zero is not allowed."
        exit 1
    fi
else
    echo "Invalid operation selected."
    exit 1
fi

echo "The result is: $result"
