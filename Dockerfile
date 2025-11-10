FROM alpine:latest
RUN apk add --no-cache make gcc musl-dev
WORKDIR /jdupes
COPY . /jdupes
RUN make && cp jdupes /usr/local/bin/
ENTRYPOINT ["jdupes"]

