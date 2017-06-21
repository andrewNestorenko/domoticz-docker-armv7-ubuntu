FROM arm32v7/ubuntu
RUN apt-get install tzdata
ADD install.sh /root
RUN chmod +x /root/install.sh
