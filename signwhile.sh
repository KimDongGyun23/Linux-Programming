#!/usr/bin/env bash

function signwhile(){

             INDEX=1;
             MIN1=1;
             MAX1=6;
    
             print_signin
             print_signin2
             print_signin3

             read -s -n3 signinput
             printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

             print_signin
             print_signin4
             print_signin3

             while :
             do
                read -s -n3 signinput

                if [[ $signinput = "" ]]
                then
                    if [[ $INDEX = 1 ]]
					then
						read loginid
						export ID="      $loginid       "
					elif [[ $INDEX = 2 ]]
					then
						diff infor.txt exinfor.txt > diff.txt
						if [[ -s diff.txt ]]
						then
                            echo "회원가입 가능"
                            exit
						else
                        	echo "같은 ID 존재"
                            exit
						fi
					elif [[ $INDEX = 3 ]]
					then
						read loginpw
						export PW="      $loginpw       "
						echo $loginid $loginpw $WIN $LOSE > infor.txt
					elif [[ $INDEX = 5 ]]
					then
						echo $loginid $loginpw $WIN $LOSE > exinfor.txt
						exit
					elif [[ $INDEX = 6 ]]
					then
						exit
					fi
                fi

                if [[ $signinput = $a ]]
                then
                    INDEX=$(expr $INDEX - 2)
                elif [[ $signinput = $b ]]
                then
                    INDEX=$(expr $INDEX + 2)
                elif [[ $signinput = $c ]]
                then
                    INDEX=$(expr $INDEX + 1)
                elif [[ $signinput = $d ]]
                then
                    INDEX=$(expr $INDEX - 1)
                fi

                if [[ $INDEX -lt $MIN1 ]]
                then
                    INDEX=$MIN1
                elif [[ $INDEX -gt $MAX1 ]]
                then
                    INDEX=$MAX1
                fi

                if [[ $INDEX = 1 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_signin
                    print_signin4
                    print_signin3
                elif [[ $INDEX = 2 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_signin
                    print_signin5
                    print_signin3
                elif [[ $INDEX = 3 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_signin
                    print_signin6
                    print_signin3
                elif [[ $INDEX = 4 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_signin
                    print_signin6
                    print_signin3
                elif [[ $INDEX = 5 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_signin
                    print_signin2
                    print_signin7
                elif [[ $INDEX = 6 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_signin
                    print_signin2
                    print_signin8
                fi
            done
}
