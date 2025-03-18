# Use the official Golang image as a base image
FROM golang:1.20 as builder

# Set the working directory inside the container
WORKDIR /app

# Copy the Go modules manifests
COPY go.mod go.sum ./

# Download Go modules
RUN go mod download

# Copy the source code
COPY . .

# Build the Go application
RUN go build -o main .

# Use a minimal base image for the final container
FROM debian:bullseye-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built binary from the builder stage
COPY --from=builder /app/main .

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["./main"]