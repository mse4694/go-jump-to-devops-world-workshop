FROM golang:1.13.3-alpine

RUN apk update \
    && apk add alpine-sdk git

COPY . /tmp

WORKDIR /tmp

RUN go build -o ./main ./main.go

cmd ["./main"]

EXPOSE 8080
