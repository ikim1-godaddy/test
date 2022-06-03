FROM debian:11

WORKDIR /home 
RUN apt update \
 && apt upgrade \ 
 && apt-get install -y sudo

RUN adduser --disabled-password --gecos '' iris
RUN adduser iris sudo
RUN touch test.txt
USER iris
CMD ls