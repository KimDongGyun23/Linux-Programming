#!/usr/bin/env bash

function joinwhile(){


             INDEX5=1;
             MIN5=1;
             MAX5=4;
    
             print_join
             print_join2
             print_join3

             read -s -n3 input5
             printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

             print_join
             print_join4
             print_join3

             while :
             do
                read -s -n3 input5

                if [[ $input5 = "" ]]
                then
					if [[ $INDEX5 = 1 ]]
					then
						read loginid3
						export ID="      $loginid3      "
                     elif [[ $INDEX5 = 2 ]]
                     then
                         read loginpw3
                         export PW="      $loginpw3      "
                         echo $loginid3 $loginpw3 $WIN $LOSE > infor.txt
					elif [[ $INDEX5 = 3 ]]
					then
		            	printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
						diff infor.txt exinfor.txt > diff.txt
						if [[ -s diff.txt ]]
						then
							exit
						else
							ID="        ID        "
							PW="        PW        "

							join2while
						fi
                    elif [[ $INDEX5 = 4 ]]
                    then
                        exit;
                    fi
                fi

                if [[ $input5 = $a ]]
                then
                    INDEX5=$(expr $INDEX5 - 1)
                elif [[ $input5 = $b ]]
                then
                    INDEX5=$(expr $INDEX5 + 1)
                elif [[ $input5 = $c ]]
                then
                    INDEX5=$(expr $INDEX5 + 1)
                elif [[ $input5 = $d ]]
                then
                    INDEX5=$(expr $INDEX5 - 1)
                fi

                if [[ $INDEX5 -lt $MIN5 ]]
                then
                    INDEX5=$MIN5
                elif [[ $INDEX5 -gt $MAX5 ]]
                then
                    INDEX5=$MAX5
                fi
                if [[ $INDEX5 = 1 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_join
                    print_join4
                    print_join3
                elif [[ $INDEX5 = 2 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_join
                    print_join5
                    print_join3
                elif [[ $INDEX5 = 3 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_join
                    print_join2
                    print_join6
                elif [[ $INDEX5 = 4 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_join
                    print_join2
                    print_join7
                fi
            done
}


