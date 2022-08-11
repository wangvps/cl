FROM ubuntu:latest

RUN apt update -y \
    && apt install -y  curl wget net-tools unzip

RUN  wget -O /cloud.tar.gz https://github.com/cloudreve/Cloudreve/releases/download/3.5.3/cloudreve_3.5.3_linux_amd64.tar.gz \
    && tar -zxvf /cloud.tar.gz

ADD start.sh /start.sh

RUN touch /conf.ini \
    && echo './cloudreve -c ./conf.ini' >> start.sh \
    && chmod +x start.sh

CMD /start.sh
