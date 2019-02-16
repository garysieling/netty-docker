FROM alpine
RUN apk add openjdk8
RUN apk add wget && \
    apk add bzip2 && \
    apk add tar && \
    wget --quiet https://dl.bintray.com/netty/downloads/netty-4.1.33.Final.tar.bz2 && \
    bzip2 -d netty-4.1.33.Final.tar.bz2 && \
    tar xvf netty-4.1.33.Final.tar && \
    apk del wget && \
    apk del bzip2 && \
    apk del tar
