#!/usr/bin/env bash

function map1while(){

INDEX4=0;
MIN4=0;
MAX4=63;
row=0;
column=0;

m1="|__|"
m2="|\e[47m__\e[0m|"
m3="|\e[44m__\e[0m|"

arr1=($m1 $m1 $m1 $m1 $m1 $m1 $m1 $m1)
arr2=($m1 $m1 $m1 $m1 $m1 $m1 $m1 $m1)
arr3=($m1 $m1 $m1 $m1 $m1 $m1 $m1 $m1)
arr4=($m1 $m1 $m1 $m1 $m1 $m1 $m1 $m1)
arr5=($m1 $m1 $m1 $m1 $m1 $m1 $m1 $m1)
arr6=($m1 $m1 $m1 $m1 $m1 $m1 $m1 $m1)
arr7=($m1 $m1 $m1 $m1 $m1 $m1 $m1 $m1)
arr8=($m1 $m1 $m1 $m1 $m1 $m1 $m1 $m1)

function echoarr(){
    echo -e "\t  ${arr1[@]}"        
    echo -e "\t  ${arr2[@]}"
    echo -e "\t  ${arr3[@]}"
    echo -e "\t  ${arr4[@]}"
    echo -e "\t  ${arr5[@]}"
    echo -e "\t  ${arr6[@]}"
    echo -e "\t  ${arr7[@]}"
    echo -e "\t  ${arr8[@]}"
}

	print_map11
	echoarr
	print_map111

    read -s -n3 input5
    printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

    print_map11
	arr1[0]=$m2

	echoarr
	arr1[0]=$m1
	print_map111
	map1while2
}

function map1while2(){
    while :
    do
        read -s -n3 input4
 
  

		row=$(expr $INDEX4 / 8 )
        column=$(expr $INDEX4 % 8 )    

        if [[ $input4 = $a ]]
        then
			if [[ $row = 0 ]]
			then
				INDEX4=$INDEX4
			else
            	INDEX4=$(expr $INDEX4 - 8)
			fi
        elif [[ $input4 = $b ]]
        then
            if [[ $row = 7 ]]
			then
				INDEX4=$INDEX4
			else
				INDEX4=$(expr $INDEX4 + 8)
			fi
        elif [[ $input4 = $c ]]
        then
            if [[ $column = 7 ]]
			then
				INDEX4=$INDEX4
			else
				INDEX4=$(expr $INDEX4 + 1)
			fi
        elif [[ $input4 = $d ]]
        then
            if [[ $column = 0 ]]
			then
				INDEX4=$INDEX4
			else
				INDEX4=$(expr $INDEX4 - 1)
        	fi
		fi

		row=$(expr $INDEX4 / 8 )
		column=$(expr $INDEX4 % 8 )		

 

	
	    if [[ $input4 = "" ]]
        then
	    	map1selectwhile
			
        fi  


        printf "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
		print_map11


		case $row in
			0 ) if [[ ${arr1[$column]} != $m1 ]]
				then
					arr1[$column]=$m2
					echoarr
					arr1[$column]=$m3
					print_map111
				else
					arr1[$column]=$m2                
					echoarr
					arr1[$column]=$m1
					print_map111
				fi
				;;
           1 ) if [[ ${arr2[$column]} != $m1 ]]
				then
                    arr2[$column]=$m2
					echoarr
                    arr2[$column]=$m3
					print_map111
				elif [[ ${arr2[$column]} != $m1 ]]
				then
					arr2[$column]=$m2
					echoarr					
					arr2[$column]=$m4
                else
                    arr2[$column]=$m2    
                    echoarr
					arr2[$column]=$m1
					print_map111
                fi
                ;;

           2 ) if [[ ${arr3[$column]} != $m1 ]]
                then
                    arr3[$column]=$m2
                    echoarr
					arr3[$column]=$m3
					print_map111
                else
                    arr3[$column]=$m2    
                    echoarr
					arr3[$column]=$m1
					print_map111
                fi
                ;;

           3 ) if [[ ${arr4[$column]} != $m1 ]]
                then
                    arr4[$column]=$m2
                    echoarr
					arr4[$column]=$m3
					print_map111
                else
                    arr4[$column]=$m2    
                    echoarr
					arr4[$column]=$m1
					print_map111
                fi
                ;;

           4 ) if [[ ${arr5[$column]} != $m1 ]]
                then
                    arr5[$column]=$m2
                    echoarr
					arr5[$column]=$m3
					print_map111
                else
                    arr5[$column]=$m2    
                    echoarr
					arr5[$column]=$m1
					print_map111
                fi
                ;;

           5 ) if [[ ${arr6[$column]} != $m1 ]]
                then
                    arr6[$column]=$m2
                    echoarr
					arr6[$column]=$m3
					print_map111
                else
                    arr6[$column]=$m2    
                    echoarr
					arr6[$column]=$m1
					print_map111
                fi
                ;;

           6 ) if [[ ${arr7[$column]} != $m1 ]]
                then
                    arr7[$column]=$m2
                    echoarr
					arr7[$column]=$m3
					print_map111
                else
                    arr7[$column]=$m2    
                    echoarr
					arr7[$column]=$m1
					print_map111
                fi
                ;;

           7 ) if [[ ${arr8[$column]} != $m1 ]]
                then
                    arr8[$column]=$m2
                    echoarr
					arr8[$column]=$m3
					print_map111
                else
                    arr8[$column]=$m2    
                    echoarr
					arr8[$column]=$m1
					print_map111
                fi
                ;;

			esac
    done
}
