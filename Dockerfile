FROM adoptopenjdk/openjdk8

RUN apt-get update
RUN apt-get -y install wget libc6-i386 gcc ant
RUN wget --no-check-certificate "https://sourceforge.net/projects/launch4j/files/launch4j-3/3.50/launch4j-3.50-linux.tgz" && tar -xvzf launch4j-3.50-linux.tgz && rm launch4j-3.50-linux.tgz
WORKDIR /work