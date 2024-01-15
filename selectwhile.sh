#!/usr/bin/env bash

function selectwhile(){

INDEX3=1;
MIN3=1;
MAX3=2;

    print_select1
    print_select2
    print_select3


    read -s -n3 input3
    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

    print_select1
    print_select2
    print_select4

    while :
    do
        read -s -n3 input3
    
        if [[ $input3 = "" ]]
        then

            if [[ $INDEX3 = 1 ]]
            then
				printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                map1while
            elif [[ $INDEX3 = 2 ]]  
            then
				printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n    \n\n\n"
				map2while
            fi
        fi

        if [[ $input3 = $a ]]
        then
            INDEX3=$(expr $INDEX3 - 1)
        elif [[ $input3 = $b ]]
        then
            INDEX3=$(expr $INDEX3 + 1)
        elif [[ $input3 = $c ]]
        then
            INDEX3=$(expr $INDEX3 + 1)
        elif [[ $input3 = $d ]]
        then
            INDEX3=$(expr $INDEX3 - 1)
        fi

        if [[ $INDEX3 -lt $MIN3 ]]
        then
            INDEX3=$MIN3
        elif [[ $INDEX3 -gt $MAX3 ]]
        then
            INDEX3=$MAX3
        fi
        if [[ $INDEX3 = 1 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_select1
            print_select2
            print_select4
        elif [[ $INDEX3 = 2 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_select1
            print_select2
            print_select5
        fi

    done

}
