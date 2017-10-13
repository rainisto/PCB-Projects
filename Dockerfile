FROM debian:stable

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install git curl nano vim make gcc-arm-none-eabi

RUN git clone https://github.com/rainisto/PCB-Projects.git

RUN cd PCB-Projects/kickstart-switcher/v2/ && make

CMD (cd /PCB-Projects/kickstart-switcher/v2/src && cp kswitch.[heb]* /flash/)
