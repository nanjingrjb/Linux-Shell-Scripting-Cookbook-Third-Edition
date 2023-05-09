#!/bin/bash
#
a=3
b=3
 [ $a -eq $b ] &&echo equal ||echo not equal.

a=4
b=3
 [ $a -gt $b ] &&echo "$a>$b" ||echo "$a<=$b"

