FROM ubuntu:22.04
WORKDIR /usr/src/app
RUN apt update -y && \
    apt upgrade -y && \
    apt install git -y 
RUN apt install aria2 wget curl -y
RUN apt install python3 -y
RUN apt install python3-pip -y
RUN git clone https://github.com/hsjsa/magneto-for-group.git .
RUN pip3 install -r requirements.txt
RUN ls
RUN pip install python_magic_bin-0.4.14-py2.py3-none-win32.whl
COPY . .
CMD ["bash","fuck.sh"]
