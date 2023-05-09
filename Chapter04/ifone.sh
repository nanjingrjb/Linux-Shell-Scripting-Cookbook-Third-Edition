#!/bin/bash

read -p "input your age:" age


if [ $age -gt 30 ]
then echo "midman"
elif [ $age -gt 20 ]
then echo "youthman"
elif [ $age -gt 10 ]
then echo "student"
else echo "child"
fi
