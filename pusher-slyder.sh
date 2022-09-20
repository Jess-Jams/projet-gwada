#!/bin/bash

echo "Starting to save your code"
git add .
echo "Your code is cached ( il est en mémoire volatile )"
echo "Waiting for commit ( mais on a besoin d'un message )"
read -p "What is the message ?" msg
git commit -m "$msg"
echo "Your code has been comited with the message : $msg"
git push
echo "Your code is pushed ( mais pas dans les escaliers )"