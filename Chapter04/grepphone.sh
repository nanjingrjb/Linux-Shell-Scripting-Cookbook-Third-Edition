#!/bin/bash

grep -n -Ev '^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$' phonelist.txt
