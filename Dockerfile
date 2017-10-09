FROM arm32v7/ubuntu
RUN apt update
RUN apt install -y tzdata iproute2 nano net-tools wget whiptail git apt-utils sudo curl libcurl3
RUN rm /etc/localtime && ln -s /usr/share/zoneinfo/Europe/Kiev /etc/localtime
ENV user=pi
ENV passwd=home
RUN echo "root:docker" | chpasswd

RUN useradd --shell /bin/bash --group sudo --create-home $user
RUN echo "pi:home" | chpasswd
WORKDIR /home/$user

COPY start.sh /start.sh
RUN chmod +x /start.sh
RUN wget -O install.sh install.domoticz.com
RUN chmod +x install.sh
VOLUME /home/$user/domoticz
EXPOSE 443
HEALTHCHECK --interval=5m --timeout=3s \
 CMD curl -f http://localhost:8080/ || exit 1
ENTRYPOINT /start.sh 
