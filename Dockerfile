FROM ingensi/play-framework

RUN yum update -y && yum install -y git
RUN git clone --verbose https://github.com/MatthieuNICOLAS/webPLM.git
WORKDIR webPLM
RUN activator compile
RUN activator clean stage

CMD ["./target/universal/stage/bin/web-plm"]