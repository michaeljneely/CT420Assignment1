FROM gcc:latest

COPY ./src/ ./usr/src/

WORKDIR /usr/src/

RUN ["gcc", "-lrt", "-o", "comp_check1", "comp_check1.c"]
RUN ["gcc", "-lrt", "-o", "posix_getres", "posix_getres.c"]
RUN ["gcc", "-lrt", "-o", "posix_nanosleep", "posix_nanosleep.c"]
RUN ["gcc", "-lrt", "-o", "timer_fifo_loop", "timer_FIFO_loop.c"]
RUN ["gcc", "-lrt", "-o", "timer_mem_use", "timer_mem_use.c"]
RUN ["gcc", "-lrt", "-o", "timer_memlock", "timer_memlock.c"]
RUN ["gcc", "-lrt", "-o", "timer_mod_fifo", "timer_mod_FIFO.c"]
RUN ["gcc", "-lrt", "-o", "timer_usleep", "timer_usleep.c"]

RUN chmod +x nice.sh
RUN chmod +x concurrent.sh