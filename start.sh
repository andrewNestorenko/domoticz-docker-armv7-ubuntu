if [ -f "/home/pi/domoticz/domoticz" ]
then
	/home/pi/domoticz/domoticz -dbase /home/pi/domoticz/domoticz.db -log /home/pi/domoticz/log/domoticz.log -sslwww 443 -sslcert /home/pi/domoticz/server_cert.pem
else
	/bin/bash /home/pi/install.sh
	/home/pi/domoticz/domoticz -dbase /home/pi/domoticz/domoticz.db -log /home/pi/domoticz/log/domoticz.log -sslwww 443 -sslcert /home/pi/domoticz/server_cert.pem
fi

