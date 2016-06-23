FROM alpine:latest

MAINTAINER Tim Weber <scy@scy.name>

VOLUME ["/dl"]

ENTRYPOINT ["/bin/sh", "/preseed-implant.sh"]

COPY ["debian-signing.asc", "/"]

RUN echo '@testing http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories \
	&& apk add --no-cache gnupg xorriso@testing \
	&& gpg --import < /debian-signing.asc

COPY ["preseed-implant.sh", "/"]
