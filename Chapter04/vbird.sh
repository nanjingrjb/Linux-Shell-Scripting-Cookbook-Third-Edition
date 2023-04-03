#!/bin/bash

#寻找含有the的行，并标出
echo "寻找含有the的行号,采用如下写法:grep -n \"the\" regular_express.txt"
grep -n "the" regular_express.txt


echo "寻找不含有the的行号,采用如下写法:grep -vn \"the\" regular_express.txt"
grep -vn "the" regular_express.txt


