#!/usr/bin/env bash

function map2selectwhile(){ 

       printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
	   print_map22
	

       case $row1 in

            0 ) echo ${arr11[$column1]} > n5.txt
                diff n1.txt n5.txt > n6.txt
                diff n3.txt n5.txt > n7.txt
                if [[ -s n6.txt ]]
                then
                    if [[ -s n7.txt ]]
                    then
                        arr11[$column1]=$m22
                        echoarr2
                        arr11[$column1]=$m44
                        print_map222
						map2while2
                    else
                        arr11[$column1]=$m22
                        echoarr2
                        arr11[$column1]=$m33
                        print_map222
						map2while2
                    fi
                else
					WIN3=$(expr $WIN3 + 1 )
                    arr11[$column1]=$m33
                    echoarr2
                    print_map222
					map2while2
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
                        map2while2
                    else
                        arr22[$column1]=$m22
                        echoarr2
                        arr22[$column1]=$m33
                        print_map222
                        map2while2
                    fi
                else
                    WIN3=$(expr $WIN3 + 1 )
                    arr22[$column1]=$m33
                    echoarr2
                    print_map222
                    map2while2
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
                        map2while2
                    else
                        arr33[$column1]=$m22
                        echoarr2
                        arr33[$column1]=$m33
                        print_map222
                        map2while2
                    fi
                else
                    WIN3=$(expr $WIN3 + 1 )
                    arr33[$column1]=$m33
                    echoarr2
                    print_map222
                    map2while2
                fi
                ;;
            3 ) echo ${arr44[$column1]} > n5.txt
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
                        map2while2
                    else
                        arr44[$column1]=$m22
                        echoarr2
                        arr44[$column1]=$m33
                        print_map222
                        map2while2
                    fi
                else
                    WIN3=$(expr $WIN3 + 1 )
                    arr44[$column1]=$m33
                    echoarr2
                    print_map222
                    map2while2
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
                        map2while2
                    else
                        arr55[$column1]=$m22
                        echoarr2
                        arr55[$column1]=$m33
                        print_map222
                        map2while2
                    fi
                else
                    WIN3=$(expr $WIN3 + 1 )
                    arr55[$column1]=$m33
                    echoarr2
                    print_map222
                    map2while2
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
                        map2while2
                    else
                        arr66[$column1]=$m22
                        echoarr2
                        arr66[$column1]=$m33
                        print_map222
                        map2while2
                    fi
                else
                    WIN3=$(expr $WIN3 + 1 )
                    arr66[$column1]=$m33
                    echoarr2
                    print_map222
                    map2while2
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
                        map2while2
                    else
                        arr77[$column1]=$m22
                        echoarr2
                        arr77[$column1]=$m33
                        print_map222
                        map2while2
                    fi
                else
                    WIN3=$(expr $WIN3 + 1 )
                    arr77[$column1]=$m33
                    echoarr2
                    print_map222
                    map2while2
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
                        map2while2
                    else
                        arr88[$column1]=$m22
                        echoarr2
                        arr88[$column1]=$m33
                        print_map222
                        map2while2
                    fi
                else
                    WIN3=$(expr $WIN3 + 1 )
                    arr88[$column1]=$m33
                    echoarr2
                    print_map222
                    map2while2
                fi
                ;;
            esac
}
