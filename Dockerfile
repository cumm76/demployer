FROM ubuntu:22.04
RUN apt update -y && \
    apt upgrade -y && \
    apt install git -y
RUN git clone https://github.com/hsjsa/magneto-for-group
RUN cd magneto-for-group
RUN pip3 install -r requirements.txt
RUN ./start.sh
