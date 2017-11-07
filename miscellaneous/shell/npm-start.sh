#!/bin/bash
## make this into a sudoer
# choose the correct directory



echo "Please enter some input: "
read input_variable
echo "You entered: $input_variable"


# echo "Do you wish to install this program?"
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes ) make install; break;;
#         No ) exit 1;;
#     esac
# done
# while true; do
#     read -p "Are you in the correct directory?" yn
#     case $yn in
#         [Yy]* ) make install; break;;
#         [Nn]* ) read -p "Please enter the directory, you would like your project to be in"
#         # [C]* ) exit 1
#         * ) echo "Please answer Yes or No [Y/N]";;
#     esac
# done
# npm
  touch package.json\ 
  npm init -y\
  npm set init.author.name "anthony_tran"\
  npm set init.version "0.0.1"\
  npm set init.author.email "anthonytran.dev@gmail.com"\
  npm set init.license "MIT"

# webpack
  npm i -D webpack\

# .git
# next we can connect to remote git repo straight away
# with just one command