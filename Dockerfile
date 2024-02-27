FROM golang:1.22

ARG VERSION=dev

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /main -ldflags=-X=main.version=${VERSION} main.go

CMD ["/main"]

