FROM ubuntu:latest
MAINTAINER Xander Smeets "xander@smeets.ee"
RUN apt-get update && apt-get install -y build-essential make gcc libconfig-dev git
RUN git clone https://github.com/bacnet-stack/bacnet-stack.git bacnet-stack && cd bacnet-stack && make clean all && make router
CMD ["bacnet-stack/apps/server/bacserv", "1"]
