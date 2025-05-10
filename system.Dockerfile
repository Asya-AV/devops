FROM golang:1.24.1-alpine AS system

RUN apk add --no-cache git