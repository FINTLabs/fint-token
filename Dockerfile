FROM golang:alpine
RUN apk --update add git
RUN go get github.com/mitchellh/gox
WORKDIR /go/src/app/vendor/github.com/FINTprosjektet/fint-token
ARG VERSION=0.0.0
COPY . .
RUN gox -verbose -arch amd64 -os "linux darwin windows" -ldflags "-X main.Version=${VERSION}"
RUN ls -l