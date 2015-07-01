FROM ubuntu:latest

RUN apt-get -y update && apt-get -y install unzip
RUN apt-get -y update && apt-get -y install wget
RUN wget http://downloads.typesafe.com/typesafe-activator/1.2.10/typesafe-activator-1.2.10.zip 
RUN unzip typesafe-activator-1.2.10.zip -d / && rm typesafe-activator-1.2.10.zip && chmod a+x /activator-1.2.10/activator
ENV PATH $PATH:/activator-1.2.10

RUN apt-get -y install default-jre

EXPOSE 9000
RUN mkdir /app
RUN cd app
RUN apt-get -y update && apt-get -y install git
RUN git clone --verbose https://github.com/MatthieuNICOLAS/webPLM.git
RUN cd ..
WORKDIR /app

CMD ["activator","run"]