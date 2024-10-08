# start from base
FROM golang:1.23.2

LABEL maintainer="Ellie Sager <https://www.linkedin.com/in/ellie-sager-elliecat/>"

# COPY --from=builder /usr/local/go/ /go
# ENV GOROOT=/go
# ENV PATH=$PATH:$GOROOT/bin

# set a directory for the app
WORKDIR /app

# Copy the files
ADD . /app


# Download the dependencies
RUN go mod download

# copy all the files to the container
COPY . .

# Build the Go application
RUN go build
# RUN go build -o hello-go-web

# expose port
EXPOSE 9000

# Set the entrypoint
# ENTRYPOINT ["./hello-go-web"]

# start app
CMD [ "go", "run", "server.go" ]
