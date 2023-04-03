#!/bin/bash

#寻找含有the的行，并标出
echo "寻找含有the的行号,采用如下写法:grep -n \"the\" regular_express.txt"
grep -n "the" regular_express.txt


echo "寻找不含有the的行号,采用如下写法:grep -vn \"the\" regular_express.txt"
grep -vn "the" regular_express.txt


echo "寻找忽略大小写的含有the的行号,采用如下写法:grep -in \"the\" regular_express.txt"
grep -in "the" regular_express.txt


echo "寻找含有test或tast的行号,采用如下写法:grep -n \"t[ae]st\" regular_express.txt"
grep -n "t[ae]st" --color=auto regular_express.txt


echo "寻找含有oo的行号,采用如下写法:grep -n \"oo\" regular_express.txt"
grep -n "oo" regular_express.txt

echo "寻找含有oo,但排除g开头的行号,采用如下写法:grep -n \"[^gf]oo\" regular_express.txt"
grep -n "[^fg]oo" regular_express.txt --color=auto

echo "寻找含有oo,但排除g开头的行号,采用如下写法:grep -n \"[^gf]oo\" regular_express.txt"
grep -n "[^f]o{2}" regular_express.txt --color=auto

echo "grep -n '[^a-z]oo' regular_express.txt"
grep --color=auto -n '[^a-z]oo' regular_express.txt

grep -n '[^[:lower:]]oo' regular_express.txt
	
echo "grep --color=auto -n '[0-9]' regular_express.txt"
grep --color=auto -n '[0-9]' regular_express.txt

grep --color=auto -n "o\{3,5\}" regular_express.txt





