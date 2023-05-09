ARG BUILD_IMG
ARG BASE_IMG

FROM ${BUILD_IMG} as builder

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY *.go ./

RUN go build -o main .

CMD ["/app/main"]
