if [ -f "/home/pi/domoticz/domoticz" ]
then
	/home/pi/domoticz/domoticz -dbase /home/pi/domoticz/domoticz.db -log /home/pi/domoticz/log/domoticz.log -www 8080
else
	/bin/bash /home/pi/install.sh
	/home/pi/domoticz/domoticz -dbase /home/pi/domoticz/domoticz.db -log /home/pi/domoticz/log/domoticz.log -www 8080 
fi

