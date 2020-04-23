FROM node:12-alpine

RUN echo "http://dl-4.alpinelinux.org/alpine/v3.8/main" >> /etc/apk/repositories && \
	echo "http://dl-4.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories
    
RUN apk update

RUN apk add --no-cache curl unzip libexif udev chromium xvfb \
    nss \
    freetype \
    freetype-dev \
    harfbuzz \
    ca-certificates \
    ttf-freefont
