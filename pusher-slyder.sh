#!/bin/bash
function funcMsg(){
    read -p "What is the message ? " msg
    if [ -z "$msg" ];
    then 
    echo 'Canceled due to empty commit'
    echo 'Please retry with a commit message'
    $1 = $1 + 1
    echo "Try number : $1"
    funcMsg
    else git commit -m "$msg"
    echo "Your code has been comited with the message : $msg"
    git push
    echo "Your code is pushed ( mais pas dans les escaliers )";
    fi
}

echo "Starting to save your code"
git add .
echo "Your code is cached ( il est en mémoire volatile )"
echo "Waiting for commit ( mais on a besoin d'un message )"

funcMsg '0'