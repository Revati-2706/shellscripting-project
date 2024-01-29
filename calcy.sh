#!/bin/bash

echo "welcome to shell calculator :"
sleep 3s
read -p  "please enter a number on which you wnat to operator ..... enter the number respectively A & B" a b
sleep 3s
read -p " now please enter the arithimatic operator here's the option 
1) +
2) -
3)*
4)/


chose from it " d
 sleep 5s
if [[ d -eq 1 ]]; then
 echo "$((a + b))"
elif [[ d -eq 2 ]]; then
 echo "$((a - b))"
elif [[ d -eq 3 ]]; then
echo "$((a * b))"
elif [[ d -eq 4 ]]; then
echo "$((a / b))"
else 
echo "their is syntax error "
fi

