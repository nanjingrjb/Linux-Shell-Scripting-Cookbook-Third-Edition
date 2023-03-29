#!/bin/bash
. ./script10.sh
echo "call fname from script9.sh"
fname $1 $2
name=$(name)
age=$(age)
echo "your name is:"$name
echo "your age is:"$age
