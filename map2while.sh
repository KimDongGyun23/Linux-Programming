#!/usr/bin/env bash

function map2while(){

INDEX7=0;
MIN7=0;
MAX7=63;
row1=0;
column1=0;

m11="|__|"
m22="|\e[47m__\e[0m|"
m33="|\e[44m__\e[0m|"
m44="|\e[43m__\e[0m|"

echo $m11 > n1.txt
echo $m22 > n2.txt
echo $m33 > n3.txt
echo $m44 > n4.txt

arr11=($m11 $m11 $m11 $m11 $m11 $m11 $m11 $m11)
arr22=($m11 $m44 $m11 $m11 $m11 $m11 $m44 $m11)
arr33=($m11 $m11 $m44 $m11 $m11 $m44 $m11 $m11)
arr44=($m11 $m11 $m11 $m44 $m44 $m11 $m11 $m11)
arr55=($m11 $m11 $m11 $m44 $m44 $m11 $m11 $m11)
arr66=($m11 $m11 $m44 $m11 $m11 $m44 $m11 $m11)
arr77=($m11 $m44 $m11 $m11 $m11 $m11 $m44 $m11)
arr88=($m11 $m11 $m11 $m11 $m11 $m11 $m11 $m11)


function echoarr2(){
	echo -e "\t  ${arr11[@]}"        
    echo -e "\t  ${arr22[@]}"
    echo -e "\t  ${arr33[@]}"
    echo -e "\t  ${arr44[@]}"
    echo -e "\t  ${arr55[@]}"
    echo -e "\t  ${arr66[@]}"
    echo -e "\t  ${arr77[@]}"
    echo -e "\t  ${arr88[@]}"
}

    print_map22
	echoarr2
    print_map222

    read -s -n3 input6
    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

    print_map22
    arr11[0]=$m22

	echoarr2
    arr11[0]=$m11
    print_map222
  map2while2
}   

function map2while2(){
    while :
    do
        read -s -n3 input7



        row1=$(expr $INDEX7 / 8 )
        column1=$(expr $INDEX7 % 8 )    

        if [[ $input7 = $a ]]
        then
            if [[ $row1 = 0 ]]
            then
                INDEX7=$INDEX7
            else
                INDEX7=$(expr $INDEX7 - 8)
            fi
        elif [[ $input7 = $b ]]
        then
            if [[ $row1 = 7 ]]
            then
                INDEX7=$INDEX7
            else
                INDEX7=$(expr $INDEX7 + 8)
            fi
        elif [[ $input7 = $c ]]
        then
            if [[ $column1 = 7 ]]
            then
                INDEX7=$INDEX7
            else
                INDEX7=$(expr $INDEX7 + 1)
            fi
        elif [[ $input7 = $d ]]
        then
            if [[ $column1 = 0 ]]
            then
                INDEX7=$INDEX7
            else
                INDEX7=$(expr $INDEX7 - 1)
            fi
        fi

        row1=$(expr $INDEX7 / 8 )
        column1=$(expr $INDEX7 % 8 )

        if [[ $input7 = "" ]]
        then
            map2selectwhile

        fi


        printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
        print_map22

        case $row1 in
            0 ) if [[ ${arr11[$column1]} != $m11 ]]
                then
                    arr11[$column1]=$m22
                    echoarr2
					arr11[$column1]=$m33
                    print_map222

                else
                    arr11[$column1]=$m22
                    echoarr2
					arr11[$column1]=$m11
                    print_map222
                fi
                ;;
           1 ) echo ${arr22[$column1]} > n5.txt
				diff n1.txt n5.txt > n6.txt
				diff n3.txt n5.txt > n7.txt
				if [[ -s n6.txt ]]
				then
					if [[ -s n7.txt ]]
					then
						arr22[$column1]=$m22
						echoarr2
						arr22[$column1]=$m44
						print_map222
					else
						arr22[$column1]=$m22
						echoarr2
						arr22[$column1]=$m33
						print_map222
					fi
                else
                    arr22[$column1]=$m22
                    echoarr2
					arr22[$column1]=$m11
                    print_map222
                fi
                ;;
           2 ) echo ${arr33[$column1]} > n5.txt
                diff n1.txt n5.txt > n6.txt
                diff n3.txt n5.txt > n7.txt
                if [[ -s n6.txt ]]
                then
                    if [[ -s n7.txt ]]
                    then
                        arr33[$column1]=$m22
                        echoarr2
                        arr33[$column1]=$m44
                        print_map222
                    else
                        arr33[$column1]=$m22
                        echoarr2
                        arr33[$column1]=$m33
                        print_map222
                    fi
                else
                    arr33[$column1]=$m22
                    echoarr2
                    arr33[$column1]=$m11
                    print_map222
                fi  
                ;;  
           3 )  echo ${arr44[$column1]} > n5.txt
                diff n1.txt n5.txt > n6.txt
                diff n3.txt n5.txt > n7.txt
                if [[ -s n6.txt ]]
                then
                    if [[ -s n7.txt ]]
                    then
                        arr44[$column1]=$m22
                        echoarr2
                        arr44[$column1]=$m44
                        print_map222
                    else
                        arr44[$column1]=$m22
                        echoarr2
                        arr44[$column1]=$m33
                        print_map222
                    fi
                else
                    arr44[$column1]=$m22
                    echoarr2
                    arr44[$column1]=$m11
                    print_map222
                fi  
                ;;  
           4 ) echo ${arr55[$column1]} > n5.txt
                diff n1.txt n5.txt > n6.txt
                diff n3.txt n5.txt > n7.txt
                if [[ -s n6.txt ]]
                then
                    if [[ -s n7.txt ]]
                    then
                        arr55[$column1]=$m22
                        echoarr2
                        arr55[$column1]=$m44
                        print_map222
                    else
                        arr55[$column1]=$m22
                        echoarr2
                        arr55[$column1]=$m33
                        print_map222
                    fi
                else
                    arr55[$column1]=$m22
                    echoarr2
                    arr55[$column1]=$m11
                    print_map222
                fi  
                ;;  
           5 ) echo ${arr66[$column1]} > n5.txt
                diff n1.txt n5.txt > n6.txt
                diff n3.txt n5.txt > n7.txt
                if [[ -s n6.txt ]]
                then
                    if [[ -s n7.txt ]]
                    then
                        arr66[$column1]=$m22
                        echoarr2
                        arr66[$column1]=$m44
                        print_map222
                    else
                        arr66[$column1]=$m22
                        echoarr2
                        arr66[$column1]=$m33
                        print_map222
                    fi
                else
                    arr66[$column1]=$m22
                    echoarr2
                    arr66[$column1]=$m11
                    print_map222
                fi
				;;  
           6 ) echo ${arr77[$column1]} > n5.txt
                diff n1.txt n5.txt > n6.txt
                diff n3.txt n5.txt > n7.txt
                if [[ -s n6.txt ]]
                then
                    if [[ -s n7.txt ]]
                    then
                        arr77[$column1]=$m22
                        echoarr2
                        arr77[$column1]=$m44
                        print_map222
                    else
                        arr77[$column1]=$m22
                        echoarr2
                        arr77[$column1]=$m33
                        print_map222
                    fi
                else
                    arr77[$column1]=$m22
                    echoarr2
                    arr77[$column1]=$m11
                    print_map222
                fi  
                ;;  
           7 ) echo ${arr88[$column1]} > n5.txt
                diff n1.txt n5.txt > n6.txt
                diff n3.txt n5.txt > n7.txt
                if [[ -s n6.txt ]]
                then
                    if [[ -s n7.txt ]]
                    then
                        arr88[$column1]=$m22
                        echoarr2
                        arr88[$column1]=$m44
                        print_map222
                    else
                        arr88[$column1]=$m22
                        echoarr2
                        arr88[$column1]=$m33
                        print_map222
                    fi
                else
                    arr88[$column1]=$m22
                    echoarr2
                    arr88[$column1]=$m11
                    print_map222
                fi  
                ;;  
            esac

    done
}
