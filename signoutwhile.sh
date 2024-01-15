#!/usr/bin/env/bash

function signoutwhile(){


             INDEX4=1;
             MIN4=1;
             MAX4=4;
    
             print_signout
             print_signout2
             print_signout3

             read -s -n3 input4
             printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

             print_signout
             print_signout4
             print_signout3

             while :
             do
                read -s -n3 input4

                if [[ $input4 = "" ]]
                then
					if [[ $INDEX4 = 1 ]]
					then
						read loginid1
						export ID="      $loginid1      "
					elif [[ $INDEX4 = 2 ]]
					then
						read loginpw1
						export PW="      $loginpw1      "
						echo $loginid1 $loginpw1 $WIN $LOSE > infor.txt
						diff infor.txt exinfor.txt > diff.txt
					elif [[ $INDEX4 = 3 ]]
					then
						if [[ -s diff.txt ]]
						then
							exit
						else
							cat delete.txt > infor.txt
							cat delete.txt > exinfor.txt
							exit
						fi	
					elif [[ $INDEX4 = 4 ]]
                    then
                        exit;
                    fi
                fi

                if [[ $input4 = $a ]]
                then
                    INDEX4=$(expr $INDEX4 - 1)
                elif [[ $input4 = $b ]]
                then
                    INDEX4=$(expr $INDEX4 + 1)
                elif [[ $input4 = $c ]]
                then
                    INDEX4=$(expr $INDEX4 + 1)
                elif [[ $input4 = $d ]]
                then
                    INDEX4=$(expr $INDEX4 - 1)
                fi

                if [[ $INDEX4 -lt $MIN4 ]]
                then
                    INDEX4=$MIN4
                elif [[ $INDEX4 -gt $MAX4 ]]
                then
                    INDEX4=$MAX4
                fi
                if [[ $INDEX4 = 1 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_signout
					print_signout4
					print_signout3
                elif [[ $INDEX4 = 2 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_signout
                    print_signout5
                    print_signout3
                elif [[ $INDEX4 = 3 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_signout
                    print_signout2
                    print_signout6
                elif [[ $INDEX4 = 4 ]]
                then
                    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
                    print_signout
                    print_signout2
					print_signout7
            	fi
			done
}
