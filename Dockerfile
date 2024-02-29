FROM golang:1.22

ARG VERSION=dev

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux go build -o /main  main.go

CMD ["/main"]

