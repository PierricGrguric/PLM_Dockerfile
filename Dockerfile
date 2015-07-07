FROM pierricgrguric/docker-play-framework

RUN apt-get -y update && apt-get -y install git
RUN git clone https://github.com/MatthieuNICOLAS/webPLM.git --depth 1
WORKDIR webPLM
RUN activator compile
RUN activator clean stage

CMD ["./target/universal/stage/bin/web-plm"]