#bin/bash
BLU='\033[0;34m'
NC='\033[0m'
UN='\e[4m'
NU='\e[0m'
echo -e "${BLU}     _         _          ___ _ _      _"
echo -e "    /_\  _   _| |_ ___   / __\ (_) ___| | _____ _ __"
echo "   //_\\\| | | | __/ _ \ / /  | | |/ __| |/ / _ \ '__|"
echo "  /  _  \ |_| | || (_) / /___| |_| (__|   <  __/ |"
echo -e "  \_/ \_/\__,_|\__\___/\____/|___|\___|_|\_\___|_|${NC}"
echo ""
echo " ----------------------------------------------------"
echo -e "       -= ${BLU}A tool to simulate mouse activity${NC} =-"
echo " ----------------------------------------------------"
echo "  Autoclicker will simulate a mouse click every 0.5s"
echo "    so make sure to put your mouse pointer where"
echo "           you need it before proceeding"
echo "             to avoid wreaking havoc."
echo "                         -"
echo "      At closing, the program will display the"
echo "   time elapsed since the beginning of the session."
echo " ----------------------------------------------------"
echo""
echo " Press any key to begin"
while [ true ] ; do
	read -n 1
	if [ $? = 0 ] ; then
		echo $' Program running (press any key to stop)...'
		SECONDS=0
		old_tty=$(stty --save)
		stty -icanon min 0;
		while true ; do xdotool click 1; sleep 0.5;
			if read -t 0; then
				read -n 1 char
				break
			fi
		done
		stty $old_tty
		echo""
		if (( $SECONDS > 3600 )) ; then
			let "hours=SECONDS/3600"
			let "minutes=(SECONDS%3600)/60"
			let "seconds=(SECONDS%3600)%60"
			echo " Program stopped by user"
			echo ""
			echo " Time elapsed : $hours hour(s), $minutes minute(s) and $seconds second(s)"
			exit ;
		elif (( $SECONDS > 60 )) ; then
			let "minutes=(SECONDS%3600)/60"
			let "seconds=(SECONDS%3600)%60"
			echo " Program stopped by user"
			echo ""
			echo " Time elapsed : $minutes minute(s) and $seconds second(s)"
			exit ;
		else
			echo " Program stopped by user"
			echo ""
			echo " Time elapsed : $SECONDS second(s)"
			exit ;
		fi
	fi
done
