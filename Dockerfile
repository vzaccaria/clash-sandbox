FROM    ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:hvr/ghc
RUN apt-get update
RUN apt-get install -y cabal-install-1.22 ghc-7.10.1
RUN apt-get install -y make curl
RUN apt-get install -y nodejs
RUN apt-get install -y vim
RUN apt-get install -y sudo
RUN /opt/cabal/1.22/bin/cabal update
ENV PATH $PATH:/opt/ghc/7.10.1/bin:/opt/cabal/1.22/bin
ENV LD_LIBRARY_PATH /lib/x86_64-linux-gnu
RUN ln -s /lib/x86_64-linux-gnu/libtinfo.so.5.9 /lib/x86_64-linux-gnu/libtinfo.so
RUN cabal install clash-ghc-5.7
