FROM golang:1.17-bullseye

ENV APP_HOME /go/src/gabrie30/tinytimeout
RUN mkdir -p "$APP_HOME"

WORKDIR "$APP_HOME"
COPY . .
RUN go build .
EXPOSE 8080
CMD ["./tinytimeout"]
