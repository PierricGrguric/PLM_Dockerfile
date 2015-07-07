FROM java:7-jdk

RUN wget http://downloads.typesafe.com/typesafe-activator/1.3.4/typesafe-activator-1.3.4.zip 
RUN unzip typesafe-activator-1.3.4.zip -d / && rm typesafe-activator-1.3.4.zip && chmod a+x /activator-1.3.4/activator
ENV PATH $PATH:/activator-1.3.4

EXPOSE 9000
RUN mkdir /app
WORKDIR /app

CMD ["activator", "run"]