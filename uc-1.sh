#!/bin/bash

read -p "Enter The First Number: " x
read -p "Enter The Second Number: " y

z=$(( $x + $y ))
echo "Addition Is :- $z"
