#!/usr/bin/env bash

function map1selectwhile(){ 

       printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
	   print_map11
	

       case $row in

            0 ) if [[ ${#arr1[$column]} != ${#m3} ]]
                then
                    WIN1=$(expr $WIN1 + 1 )
					arr1[$column]=$m3
					echoarr
					print_map111
					map1while2
				else
					arr1[$column]=$m2
					echoarr
					print_map111
                    arr1[$column]=$m3
					map1while2
				fi
				;;
            1 ) if [[ ${#arr2[$column]} != ${#m3} ]]
                then
                    WIN1=$(expr $WIN1 + 1 )
                    arr2[$column]=$m3
                    echoarr
                    print_map111
                    map1while2
                else
                    arr2[$column]=$m2
                    echoarr
                    print_map111
                    arr2[$column]=$m3              
				    map1while2
				fi 
                ;;
            2 ) if [[ ${#arr3[$column]} != ${#m3} ]]
                then
                    WIN1=$(expr $WIN1 + 1 )
                    arr3[$column]=$m3
                    echoarr
                    print_map111
                    map1while2
                else
                    arr3[$column]=$m2
                    echoarr
                    print_map111
                    arr3[$column]=$m3
                    map1while2
                fi
                ;;
            3 ) if [[ ${#arr4[$column]} != ${#m3} ]]
                then
                    WIN1=$(expr $WIN1 + 1 )
                    arr4[$column]=$m3
                    echoarr
                    print_map111
                    map1while2
                else
                    arr4[$column]=$m2
                    echoarr
                    print_map111
                    arr4[$column]=$m3
                    map1while2
                fi
                ;;
            4 ) if [[ ${#arr5[$column]} != ${#m3} ]]
                then
                    WIN1=$(expr $WIN1 + 1 )
                    arr5[$column]=$m3
                    echoarr
                    print_map111
                    map1while2
                else
                    arr5[$column]=$m2
                    echoarr
                    print_map111
                    arr5[$column]=$m3
                    map1while2
                fi
                ;;
            5 ) if [[ ${#arr6[$column]} != ${#m3} ]]
                then
                    WIN1=$(expr $WIN1 + 1 )
                    arr6[$column]=$m3
                    echoarr
                    print_map111
                    map1while2
                else
                    arr6[$column]=$m2
                    echoarr
                    print_map111
                    arr6[$column]=$m3
                    map1while2
                fi
                ;;
            6 ) if [[ ${#arr7[$column]} != ${#m3} ]]
                then
                    WIN1=$(expr $WIN1 + 1 )
                    arr7[$column]=$m3
                    echoarr
                    print_map111
                    map1while2
                else
                    arr7[$column]=$m2
                    echoarr
                    print_map111
                    arr7[$column]=$3
                    map1while2
                fi
                ;;
            7 ) if [[ ${#arr8[$column]} != ${#m3} ]]
                then
                    WIN1=$(expr $WIN1 + 1 )
                    arr8[$column]=$m3
                    echoarr
                    print_map111
                    map1while2
                else
                    arr8[$column]=$m2
                    echoarr
                    print_map111
                    arr8[$column]=$m3
                    map1while2
                fi
                ;;

            esac


}
