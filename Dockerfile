FROM golang as builder
WORKDIR /app
COPY desafio/ /app
RUN go build desafio1.go

FROM scratch
WORKDIR /app
COPY --from=builder /app .
CMD ["./desafio1"]