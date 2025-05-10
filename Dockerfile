# Stage 1: Build
FROM golang:1.24.1-alpine AS builder
RUN apk add --no-cache git

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN go build -o echo_web .

# Stage 2: Runtime
FROM alpine:latest

RUN adduser -D myuser

WORKDIR /app
COPY --from=builder /app/echo_web .

RUN chown -R myuser:myuser /app
RUN rm -rf /var/cache/*

USER myuser
EXPOSE 8080
CMD ["./echo_web"]