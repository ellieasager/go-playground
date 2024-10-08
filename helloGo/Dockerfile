# start from base
FROM golang:1.23.2

LABEL maintainer="Ellie Sager <https://www.linkedin.com/in/ellie-sager-elliecat/>"

WORKDIR /app
ADD . /app

RUN go mod download

COPY *.go ./

RUN go build -o hello .

CMD ["./hello"] 
