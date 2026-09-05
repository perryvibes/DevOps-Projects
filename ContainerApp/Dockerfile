# BUILDER
FROM golang:1.27-alpine AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

# reducing image size
RUN CGO_ENABLED=0 GOOS=linux go build -o games-api .

#PRODUCTION
FROM alpine:latest

# Certificate for HTTPS  requests
RUN apk --no-cache add ca-certificates

WORKDIR /app

# Using a non-root user (good practice)
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY --from=builder /app/games-api .

RUN chown appuser:appgroup /app/games-api

USER appuser

EXPOSE 8080

CMD ["./games-api"]