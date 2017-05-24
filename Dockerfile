FROM debian:jessie

RUN apt-get update; apt-get install -y build-essential git

RUN git clone https://github.com/google/jsonnet.git; cd jsonnet; make

RUN git clone https://github.com/ksonnet/ksonnet-lib.git

RUN mv jsonnet/jsonnet /usr/local/bin/jsonnet

VOLUME /workdir

WORKDIR /workdir

ENTRYPOINT ["jsonnet"]