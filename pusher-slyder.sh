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
echo "Beginning to test your code with a coffee ( mocha, you've got ? )"
mocha
read -p "Do you want to continu or stop, say y to continue, or n to canceled :  " res
if (($res=='y'))
then
echo "Your code is cached ( il est en mémoire volatile )"
echo "Waiting for commit ( mais on a besoin d'un message )"
test=0
funcMsg $test;
elif (($res=='n'))
then
exit;
else 
echo "Please use 'y' or 'n', this is your last try";
read -p "Do you want to continu or stop, say y to continue, or n to canceled :  " restwo
if (($restwo=='y'))
then
echo "Your code is cached ( il est en mémoire volatile )"
echo "Waiting for commit ( mais on a besoin d'un message )"
test=0
funcMsg $test;
elif (($restwo=='n'))
then
exit;
else 
exit;
fi
fi