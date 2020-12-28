FROM golang:1.14.0

WORKDIR /go/src/app

COPY . .

RUN go get -d -v ./...

RUN go install -v ./...

ENTRYPOINT ["app"]
