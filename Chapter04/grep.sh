#!/bin/bash

cat testgrep.txt|egrep --color=auto  [a-zA-Z]{5}[^0-9] -n
