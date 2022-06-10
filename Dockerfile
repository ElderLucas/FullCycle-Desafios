FROM golang:alpine

# Set the Current Working Directory inside the container
WORKDIR /var/src/app

# Copy everything from the current directory to the PWD (Present Working Directory) inside the container
COPY ./main.go .

# Download all the dependencies
RUN go build main.go

# Install the package
#RUN go install -v ./...

# This container exposes port 8080 to the outside world
#EXPOSE 8080

# Run the executable
CMD ["./main"]