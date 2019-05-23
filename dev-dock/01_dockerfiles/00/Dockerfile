#From an alpine image you’ll add to your container your favorite text editor, vim or
# emacs, that will launch along with your container.

FROM alpine
RUN apk update && \
	apk add vim \
	&& rm -rf /var/lib/apt/lists/*
# cmd ["echo", "hello"]

# Set one or more individual labels
LABEL com.example.version="0.0.1-beta"

#SETTING ENTRY POINT
ENTRYPOINT ["vim"]