FROM golang:1.20 as builder

WORKDIR /app

COPY main/main.go .

RUN CGO_ENABLED=0 go build -o /app/main main.go 

FROM scratch

COPY --from=builder /app/main /app/main

CMD ["/app/main"]
