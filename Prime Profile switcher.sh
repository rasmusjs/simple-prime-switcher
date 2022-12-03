#!/bin/bash


#Check if user is root else exit
PASSWD="$(zenity --password --title=Authentication required)\n"
#if [ "$EUID" -ne 0 ]
#  then zenity --info --text="Please run as root"
#  exit
#fi

sudo=$(echo -e $PASSWD | sudo -S id -u)
echo $sudo

if [ $(echo -e $PASSWD | sudo -S id -u) != 0 ]
  then zenity --info --text="Please run as root"
  exit
fi

#Check current prime profile
current=$(prime-select query)

array=("AMD/Intel GPU" "On-Demand" "NVIDEA")
answer=`zenity --list --title="Prime Profile Switcher " --column="Currently Prime profile : $current" "${array[@]}" --width 300 --height 200`

case "$answer" in 
    "${array[0]}") 
        echo -e $PASSWD | sudo -S prime-select intel
        ;; 
    "${array[1]}") 
        echo -e $PASSWD | sudo -S prime-select on-demand
        ;; 
    "${array[2]}") 
        echo -e $PASSWD | sudo -S prime-select nvidia
        ;;
        *)
    	exit
    	;;
esac


zenity --question --title="Logout requred for switching Prime Profile" --text="Are you sure you wish to logout now?"
if [ $? = 0 ]; then
    echo -e $PASSWD | sudo -S pkill -KILL -u $USER
else
    exit
fi
