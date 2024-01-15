#!/usr/bin/env bash

source ./mainscreen.sh
source ./signupscreen.sh
source ./signwhile.sh
source ./signoutscreen.sh
source ./signoutwhile.sh
source ./joinscreen.sh
source ./joinwhile.sh
source ./join2while.sh
 
JOIN="     JOIN     "
SIGN_IN="   SIGN IN    "
EXIT="     EXIT     "
SIGN_OUT="   SIGN OUT   "
ID="        ID        "
PW="        PW        "
CHECK=" Duplicate check "
SIGNIN=" SIGN IN "
SIGNOUT=" SIGN OUT "
EXIT2="   EXIT   "
LOGIN="   LOGIN   "
WIN=0;
LOSE=0;

a="[A"
b="[B"
c="[C"
d="[D"

touch infor.txt exinfor.txt delete.txt

printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
print_main1
print_main2

SELECTED=1;
MIN=1;
MAX=4;

read -s -n3 input
printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

print_main1
print_main3

while :
do  
    read -s -n3 input
    
    if [[ $input = "" ]]
    then
		if [[ $SELECTED = 1 ]]
		then
	        printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
			joinwhile
        elif [[ $SELECTED = 2 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
			signwhile
        elif [[ $SELECTED = 3 ]]
		then
            exit;
		elif [[ $SELECTED = 4 ]]
		then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"			
			signoutwhile
        fi
    fi  

    if [[ $input = $a ]]
    then
        SELECTED=$(expr $SELECTED - 2)
    elif [[ $input = $b ]]
    then
        SELECTED=$(expr $SELECTED + 2)
    elif [[ $input = $c ]]
    then
        SELECTED=$(expr $SELECTED + 1)
    elif [[ $input = $d ]]
    then
        SELECTED=$(expr $SELECTED - 1)
    fi  

    if [[ $SELECTED -lt $MIN ]]
    then
        SELECTED=$MIN
    elif [[ $SELECTED -gt $MAX ]]
    then
        SELECTED=$MAX
    fi  

    if [[ $SELECTED = 1 ]]
    then
        printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
        print_main1
        print_main3
    elif [[ $SELECTED = 2 ]]
    then
        printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
        print_main1
        print_main4

    elif [[ $SELECTED = 3 ]]
    then
        printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
        print_main1
        print_main5
    elif [[ $SELECTED = 4 ]]
    then
        printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
        print_main1
        print_main6
    fi  
done





