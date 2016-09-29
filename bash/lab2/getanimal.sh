#!/bin/bash
#Create an array of colours, with at least 4 colours in it. 
#Create an associative array of animals, where the keys are colours, 
#and the values are animals who are that colour.
#Use the colours you put into the first array. 
#Ask the user for a number and use it to display a colour from the array, 
#then the corresponding animal from the associative array for that colour.

colours=("red" "green" "blue" "yellow")
declare -A animals
animals=(["red"]="cardial" ["green"]="frog" ["blue"]="lobster" ["yellow"]="Tiger")

echo "the colours are: ${colours[0]}, ${colours[1]}, ${colours[2]}, ${colours[3]}."
echo "the colours are: ${colours[@]}."

echo "the animals are: ${animals[red]}, ${animals[green]}, ${animals[blue]}, ${animals[yellow]}."
echo "the animals are: ${animals[@]} coloured ${!animals[@]}."

num=0
read -p "give me a number from 0 to 3: " num
colour=${colours[$num]}
animal=${animals[$colour]}
echo "Index $num produces a $colour $animal."

