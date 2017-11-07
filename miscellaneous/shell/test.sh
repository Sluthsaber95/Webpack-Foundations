#!/bin/bash
read -t 3 -n 1 -p "Is this a good question (y/n)? " answer
[ -z "$answer" ] && answer="Yes"\  # if 'yes' have to be default choice
read -t 3 -n 1 -p "Is this a good question (y/n)? " answer
[ -z "$answer" ] && answer="Yes"\  # if 'yes' have to be default choice