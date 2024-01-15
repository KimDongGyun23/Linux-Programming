#!/usr/bin/env bash

function joinwhile(){

INDEX1=1;
MIN1=1;
MAX1=2;

    print_join1
    print_join2
    print_join3
	print_join4


    read -s -n3 input1
    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

    print_join1
    print_join2
    print_join3
    print_join5

	while :
	do
		read -s -n3 input1
		
		if [[ $input1 = "" ]]
		then

            if [[ $INDEX1 = 1 ]]
            then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n    \n\n"
				selectwhile
				exit
            elif [[ $INDEX1 = 2 ]]  
            then
			    exit
            fi
		fi

        if [[ $input1 = $a ]]
        then
            INDEX1=$(expr $INDEX1 - 1)
        elif [[ $input1 = $b ]]
        then
            INDEX1=$(expr $INDEX1 + 1)
        elif [[ $input1 = $c ]]
        then
            INDEX1=$(expr $INDEX1 + 1)
        elif [[ $input1 = $d ]]
        then
            INDEX1=$(expr $INDEX1 - 1)
        fi

        if [[ $INDEX1 -lt $MIN1 ]]
        then
            INDEX1=$MIN1
        elif [[ $INDEX1 -gt $MAX1 ]]
        then
            INDEX1=$MAX1
        fi
        if [[ $INDEX1 = 1 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_join1
            print_join2
            print_join3
            print_join5
        elif [[ $INDEX1 = 2 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_join1
            print_join2
            print_join3
            print_join6
        fi

	done
}
