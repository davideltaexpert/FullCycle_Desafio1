FROM golang:alpine as builder

WORKDIR /go/src/

COPY  . .

FROM scratch

copy --from=builder /go/src/hello /go/src/hello

CMD [ "/go/src/hello" ]