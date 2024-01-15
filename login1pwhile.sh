#!/usr/bin/env bash

function login1pwhile(){

INDEX=1;
MIN=1;
MAX=4;

	print_login1p1
    print_login1p2
    print_login1p3

    read -s -n3 input
    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

    print_login1p1
    print_login1p4
    print_login1p3

    while :
    do
    	read -s -n3 input

        if [[ $input = "" ]]
        then
        	if [[ $INDEX = 1 ]]
            then
            	read loginid
                export ID="      $loginid       "
				export LOGIN1="      $loginid       "
            elif [[ $INDEX = 2 ]]
            then
                read loginpw
                export PW="      $loginpw       "
                echo $loginid $loginpw > infor.txt
            elif [[ $INDEX = 3 ]]
            then
                printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                diff infor.txt exinfor.txt > diff.txt

            	if [[ -s diff.txt ]]
                then
                	exit
                else
					export ID="        ID        "
					export PW="        PW        "
                	mainwhile
				fi
            elif [[ $INDEX = 4 ]]
            then
             	exit;
            fi
        fi

        if [[ $input = $a ]]
        then
            INDEX=$(expr $INDEX - 1)
        elif [[ $input = $b ]]
        then
            INDEX=$(expr $INDEX + 1)
        elif [[ $input = $c ]]
        then
            INDEX=$(expr $INDEX + 1)
        elif [[ $input = $d ]]
        then
            INDEX=$(expr $INDEX - 1)
        fi

        if [[ $INDEX -lt $MIN ]]
        then
        	INDEX=$MIN
        elif [[ $INDEX -gt $MAX ]]
        then
            INDEX=$MAX
        fi

        if [[ $INDEX = 1 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_login1p1
            print_login1p4
            print_login1p3
        elif [[ $INDEX = 2 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_login1p1
            print_login1p5
            print_login1p3
        elif [[ $INDEX = 3 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_login1p1
            print_login1p2
            print_login1p6
        elif [[ $INDEX = 4 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_login1p1
            print_login1p2
            print_login1p7
        fi
    done
}

