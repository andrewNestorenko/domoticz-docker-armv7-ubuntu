today=`date +%Y_%m_%d`
tmpfile=/tmp/domoticz_$today.tar
dbfile=/home/pi/docker/domoticz-docker-armv7-ubuntu/webroot/domoticz.db
tar -czf $tmpfile $dbfile 
/usr/local/bin/dropbox_uploader -f /home/pi/.dropbox_uploader upload $tmpfile /domoticz_backups/domoticz_$today.tar
rm -f $tmpfile
