#!/bin/bash

feh --bg-fill /usr/share/backgrounds/Ubuntu_gel_by_Midge_Mantissa_Sinnaeve.jpg

while true; do
   STAT=`acpi | awk '{ print $3 }'`
   PERCENT=`acpi | awk '{ print $4 }' | sed 's/,//g'`

   case $STAT in
	   Full,)
		   STAT=😇
		   ;;
	   Discharging,)
		   STAT=▼
		   ;;
	   Charging,)
		   STAT=▲
		   ;;
	   *)
		   STAT=x
		   ;;
   esac


   xsetroot -name "$( date +"%F %R" ) : ${PERCENT} ${STAT}"
   sleep 1m    # Update time every minute
done &

# Autostart section
exec dwm

