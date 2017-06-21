FROM arm32v7/ubuntu
RUN apt update 
RUN apt install -y tzdata iproute2 nano net-tools wget whiptail git apt-utils
RUN rm /etc/localtime && ln -s /usr/share/zoneinfo/Europe/Kiev /etc/localtime
RUN wget -O /root/install.sh install.domoticz.com 
RUN chmod +x /root/install.sh
