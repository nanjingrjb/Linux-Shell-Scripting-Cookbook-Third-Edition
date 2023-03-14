#!/bin/bash
. ./script10.sh
echo "call fname from script9.sh"
fname $1 $2
[name,age]=info()
echo $name
echo $age
