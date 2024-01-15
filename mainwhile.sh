#!/usr/bin/env bash

function select(){

while :
do  
    read -s -n3 input
    
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
}
