FROM golang:latest

RUN go install github.com/packwiz/packwiz@latest
RUN PATH=/home/runner/go/bin:$PATH
