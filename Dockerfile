FROM ubuntu:latest
RUN sudo apt-get install -y build-essential make gcc libconfig-dev git
RUN git clone https://github.com/bacnet-stack/bacnet-stack.git bacnet-stack && cd bacnet-stack
RUN make clean all && make router
