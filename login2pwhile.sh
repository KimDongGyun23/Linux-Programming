#!/usr/bin/env bash

function login2pwhile(){

INDEX2=1;
MIN2=1;
MAX2=4;

    print_login2p1
    print_login2p2
    print_login2p3

    read -s -n3 input2
    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

    print_login2p1
    print_login2p4
    print_login2p3

    while :
    do
        read -s -n3 input2

        if [[ $input2 = "" ]]
        then
            if [[ $INDEX2 = 1 ]]
            then
                read loginid1
                export ID="      $loginid1       "
                export LOGIN2="      $loginid1       "
            elif [[ $INDEX2 = 2 ]]
            then
                read loginpw1
                export PW="      $loginpw1       "
                echo $loginid1 $loginpw1 > infor.txt
            elif [[ $INDEX2 = 3 ]]
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
            elif [[ $INDEX2 = 4 ]]
            then
                exit;
            fi
        fi

        if [[ $input2 = $a ]]
        then
            INDEX2=$(expr $INDEX2 - 1)
        elif [[ $input2 = $b ]]
        then
            INDEX2=$(expr $INDEX2 + 1)
        elif [[ $input2 = $c ]]
        then
            INDEX2=$(expr $INDEX2 + 1)
        elif [[ $input2 = $d ]]
        then
            INDEX2=$(expr $INDEX2 - 1)
        fi

        if [[ $INDEX2 -lt $MIN2 ]]
        then
            INDEX2=$MIN2
        elif [[ $INDEX2 -gt $MAX2 ]]
        then
            INDEX2=$MAX2
        fi

        if [[ $INDEX2 = 1 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_login2p1
            print_login2p4
            print_login2p3
        elif [[ $INDEX2 = 2 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_login2p1
            print_login2p5
            print_login2p3
        elif [[ $INDEX2 = 3 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_login2p1
            print_login2p2
            print_login2p6
        elif [[ $INDEX2 = 4 ]]
        then
            printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
            print_login2p1
            print_login2p2
            print_login2p7
        fi
    done
}


