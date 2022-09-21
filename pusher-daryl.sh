#!/bin/bash
function funcMsg(){
    read -p "What is the message ? " msg
    if [ -z "$msg" ];
    then 
    echo 'Canceled due to empty commit'
    echo 'Please retry with a commit message'
        if (($1>5));
        then
            echo "Try number : $(($1+1))"
            echo "it's hot.... you must beginning to read what I say !!!!!!!"
            exit;
        else
            numb="$(($1+1))"
            echo "Try number : $numb"
            funcMsg $numb;
        fi
    else git commit -m "$msg"
    echo "Your code has been comited with the message : $msg"
    git push
    echo "Your code is pushed ( mais pas dans les escaliers )";
    fi
}

echo "Starting to save your code"
git add .
mocha
echo "Your code is cached ( il est en mémoire volatile )"
echo "Waiting for commit ( mais on a besoin d'un message )"
test=0
funcMsg $test