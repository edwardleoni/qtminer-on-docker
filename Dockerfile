FROM ubuntu:trusty

ARG ETHEREUM_ADDRESS

RUN mkdir qtminer
WORKDIR qtminer

RUN apt update
RUN apt install -y wget
RUN wget http://ethpool.org/downloads/qtminer2.tgz
RUN tar zxvf qtminer2.tgz

RUN echo "./qtminer.sh -s asia1.ethermine.org:4444 -u $ETHEREUM_ADDRESS.rig1" > /qtminer/run.sh

CMD ["bash", "run.sh"]
