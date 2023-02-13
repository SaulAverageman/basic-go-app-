FROM golang:1.16-alpine
RUN adduser -S goruntime
USER goruntime
WORKDIR /work
COPY * /work/
CMD ["go","run","./cmd/web/main.go"]
EXPOSE 8000