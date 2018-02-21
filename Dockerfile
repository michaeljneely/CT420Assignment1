FROM gcc:latest
#FROM ubuntu:latest

COPY ./src/ ./usr/src/


#RUN apt-get update -y && \
#apt-get upgrade -y && \
#apt-get dist-upgrade -y && \
#apt-get install build-essential software-properties-common -y && \
#add-apt-repository ppa:ubuntu-toolchain-r/test -y && \
#apt-get update -y && \
#apt-get install gcc-7 g++-7 -y && \
#update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 60 --slave /usr/bin/g++ g++ /usr/bin/g++-7 && \
#update-alternatives --config gcc

WORKDIR /usr/src/

RUN ["gcc", "-lrt", "-o", "comp_check1", "comp_check1.c"]

#RUN gcc –lrt –o comp_check1 comp_check1.c
#RUN gcc –lrt –o posix_getres posix_getres.c
#RUN gcc –lrt –o posix_nanosleep posix_nanosleep.c
#RUN gcc –lrt –o timer_fifo_loop timer_FIFO_loop.c
#RUN gcc –lrt –o timer_mem_use timer_mem_use.c
#RUN gcc -lrt -o timer_memlocl timer_memlock.c
#RUN gcc -lrt -o timer_mod_fifo timer_mod_FIFO.c
#RUN gcc -lrt -o timer_usleep timer_usleep.c
