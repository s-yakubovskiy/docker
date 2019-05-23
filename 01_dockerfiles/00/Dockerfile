#DOCKER BUILD ex00 VIM <3
FROM alpine
RUN apk update && \
	apk add vim \
	&& rm -rf /var/lib/apt/lists/*
# Set one or more individual labels
LABEL com.example.version="0.0.1-beta"
#SETTING ENTRY POINT
ENTRYPOINT ["vim"]

#build and run with
# docker build -t ex00 . && docker run --rm -ti ex00
