#!/bin/bash

sed 's/[Ll][Ii][Nn][Uu][Xx]/python/g'  testsed.txt >newplacesed.txt
diff newplacesed.txt testsed.txt
