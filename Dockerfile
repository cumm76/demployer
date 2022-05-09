FROM ghcr.io/hsjsa/ubuntu:main
WORKDIR /usr/src/app 
RUN apt install wget curl -y
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN git clone https://github.com/hsjsa/merrow.git .
RUN pip3 install -r requirements.txt
RUN apt-get install libmagic-dev -y
RUN pip3 install libmagic
RUN chmod +x start.sh aria.sh
COPY . .
CMD ["bash","start.sh"]
