FROM golang:1.18-alpine

WORKDIR /app

COPY main/main.go .

RUN go build -o app main.go

CMD ["/app/app"]