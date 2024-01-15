#!/usr/bin/env bash

print_join1(){
    echo -e "		    _  _____  _    __  ____  __ "
    echo -e "		   / \|_   _|/ \   \ \/ /\ \/ / " 
    echo -e "		  / _ \ | | / _ \   \  /  \  /  "
    echo -e "		 / ___ \| |/ ___ \  /  \  /  \  "
    echo -e "		/_/   \_\_/_/   \_\/_/\_\/_/\_\ "

    echo -e "		 _     ___  ____  ____ __    __ "
	echo -e "		| |   / _ \| __ )| __ )\ \  / / "
	echo -e '		| |  | | | |  _ \|  _ \ \ \/ /  '
	echo -e "		| |__| |_| | |_) | |_) | |  |   "
	echo -e "		|_____\___/|____/|____/  |__|   "
	echo ""
}

print_join2(){
	echo "	 _ ____					 ____  ____	 "
	echo "	/ |  _ \				|___ \|  _ \ "
	echo "	| | |_) |				  __) | |_) |"
	echo "	| |  __/				 / __/|  __/ "
	echo "	|_|_|					|_____|_|    "
	echo ""
}

print_join3(){
	echo "	ID :	$LOGIN1			ID :	$LOGIN2	"
	echo "	WIN :	$WIN1				WIN :	$WIN2"
	echo "	LOSE :	$LOSE1				LOSE :	$LOSE2"
}

print_join4(){
	echo ""
	echo ""
    echo -e "		\e[44m$START\e[0m	      \e[44m$EXIT\e[0m"
}

print_join5(){
    echo ""
    echo ""
    echo -e "		\e[41m$START\e[0m	      \e[44m$EXIT\e[0m"
}

print_join6(){
    echo ""
    echo ""
    echo -e "		\e[44m$START\e[0m	      \e[41m$EXIT\e[0m"
}

