FROM alpine
RUN apk add wget && \
    apk add bzip2 && \
    wget --quiet https://dl.bintray.com/netty/downloads/netty-4.1.33.Final.tar.bz2 && \
    bzip2 -d netty-4.1.33.Final.tar.bz2 && \
    apk remove wget && \
    apk remove bzip2
RUN apk add openjdk8
