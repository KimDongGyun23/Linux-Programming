#!/usr/bin/env bash

source ./mainscreen.sh
source ./login1pscreen.sh
source ./login1pwhile.sh
source ./login2pscreen.sh
source ./login2pwhile.sh
source ./joinscreen.sh
source ./joinwhile.sh
source ./selectscreen.sh
source ./selectwhile.sh
source ./map1screen.sh
source ./map1while.sh
source ./map1selectwhile.sh
source ./map2screen.sh
source ./map2while.sh
source ./map2selectwhile.sh
source ./signinscreen.sh
source ./signinwhile.sh
source ./signoutscreen.sh
source ./signoutwhile.sh



JOIN="   JOIN   "
SIGN_IN="   SIGN IN    "
EXIT="   EXIT   "
SIGN_OUT="   SIGN OUT   "
ID="        ID        "
PW="        PW        "
CHECK=" Duplicate check "
SIGNIN=" SIGN IN "
SIGNOUT=" SIGN OUT "
EXIT2="   EXIT   "
LOGIN="   LOGIN   "
LOGIN1="   1P LOGIN   "
LOGIN2="   2P LOGIN   "
START="   START   "
MAP1="   MAP1   "
MAP2="   MAP2   "
WIN1=0;
LOSE1=0;
WIN2=0;
LOSE2=0;

a="[A"
b="[B"
c="[C"
d="[D"

touch infor.txt exinfor.txt delete.txt
echo "XXX" > diff.txt

function mainwhile(){
printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
print_main1
print_main2


SELECTED=1;
MIN=1;
MAX=6;

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
			login1pwhile
        elif [[ $SELECTED = 2 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            signinwhile
        elif [[ $SELECTED = 3 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            login2pwhile

        elif [[ $SELECTED = 4 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            signoutwhile
		elif [[ $SELECTED = 5 ]]
		then
			if [[ -s diff.txt ]]
			then
				exit
			else
				printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
           		joinwhile
			fi
		elif [[ $SELECTED = 6 ]]
		then
			exit;
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
    elif [[ $SELECTED = 5 ]]
    then
        printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
        print_main1
        print_main7
    elif [[ $SELECTED = 6 ]]
    then
        printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
        print_main1
        print_main8
	fi
done
}

mainwhile
