#!/usr/bin/env bash
function join2while(){


             INDEX6=1;
             MIN6=1;
             MAX6=4;
    
             print_join2p
             print_join2
             print_join3

             read -s -n3 input6
             printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
             print_join2p
             print_join4
             print_join3

             while :
             do
                read -s -n3 input6

                if [[ $input6 = "" ]]
                then
                    if [[ $INDEX6 = 1 ]]
					then
						read loginid4
						export ID="      $loginid4      "
					elif [[ $INDEX6 = 2 ]]
					then
						read loginpw4
						export PW="      $loginpw4      "
						echo $loginid4 $loginpw4 $WIN $LOSE > infor.txt
					elif [[ $INDEX6 = 3 ]]
                    then
 	                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
						diff infor.txt exinfor.txt > diff.txt
						if [[ -s diff.txt ]]
						then
							exit
						else
							echo "           ____  _   _  ____ ____ _____ ____ ____"
	                        echo "          / ___|| | | |/ ___/ ___| ____/ ___/ ___|"
	                        echo "          \___ \| | | | |  | |   |  _| \___ \___ \ "
	                        echo "           ___) | |_| | |__| |___| |___ ___) |__) |"
	                        echo "          |____/ \___/ \____\____|_____|____/____/"
	                        printf "\n\n\n\n\n"
	  						exit
						fi
					elif [[ $INDEX6 = 4 ]]
                    then
                        exit;
                    fi
                fi

                if [[ $input6 = $a ]]
                then
                    INDEX6=$(expr $INDEX6 - 1)
                elif [[ $input6 = $b ]]
                then
                    INDEX6=$(expr $INDEX6 + 1)
                elif [[ $input6 = $c ]]
                then
                    INDEX6=$(expr $INDEX6 + 1)
                elif [[ $input6 = $d ]]
                then
                    INDEX6=$(expr $INDEX6 - 1)
                fi

                if [[ $INDEX6 -lt $MIN6 ]]
                then
                    INDEX6=$MIN6
                elif [[ $INDEX6 -gt $MAX6 ]]
                then
                    INDEX6=$MAX6
                fi
                if [[ $INDEX6 = 1 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_join2p
                    print_join4
                    print_join3
                elif [[ $INDEX6 = 2 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_join2p
                    print_join5
                    print_join3
                elif [[ $INDEX6 = 3 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_join2p
                    print_join2
                    print_join6
                elif [[ $INDEX6 = 4 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_join2p
                    print_join2
                    print_join7
                fi
            done
}
