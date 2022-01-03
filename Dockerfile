FROM golang:alpine as builder

WORKDIR /go/src/

COPY  hello.go .

RUN go build hello.go

FROM scratch

COPY --from=builder /go/src/hello /go/src/hello

CMD ["/go/src/hello"]



