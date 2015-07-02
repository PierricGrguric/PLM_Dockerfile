FROM ubuntu:latest

RUN apt-get -y update && apt-get -y install unzip
RUN apt-get -y update && apt-get -y install wget
RUN wget http://downloads.typesafe.com/typesafe-activator/1.3.5/typesafe-activator-1.3.5.zip 
RUN unzip typesafe-activator-1.3.5.zip -d / && rm typesafe-activator-1.3.5.zip && chmod a+x /activator-dist-1.3.5/activator
ENV PATH $PATH:/activator-dist-1.3.5

RUN apt-get -y install default-jre

EXPOSE 9000
RUN mkdir /app
WORKDIR /app
RUN apt-get -y update && apt-get -y install git
RUN git clone --verbose https://github.com/MatthieuNICOLAS/webPLM.git
WORKDIR webPLM

CMD ["activator","start"]