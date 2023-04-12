#!/bin/bash

for i in {1..10};
do echo "($[RANDOM%100+90]) $[RANDOM%100+90]-${RANDOM:0:4}" >>phonelist.txt
done
