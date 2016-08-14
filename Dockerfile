FROM daewok/lisp-devel

RUN apt-get update
RUN apt-get -y install git automake autoconf libcurl4-openssl-dev

RUN git clone -b release https://github.com/roswell/roswell.git /roswell && \
    cd /roswell && \
    ./bootstrap && \
    ./configure && \
    make && \
    make install && \
    ros setup && \
    rm -fr /roswell
