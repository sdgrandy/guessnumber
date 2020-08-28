# FROM golang:latest
# ARG ENVIRONMENT

# RUN echo "ENVIRONMENT: ${ENVIRONMENT}"
# #RUN go test -c exp/...
# RUN ls src

# RUN mkdir /app
# ADD . /app/
# WORKDIR /app
# RUN ls
# RUN go build -o main .
# CMD ["/app/main"]

FROM golang:latest
RUN echo "ENVIRONMENT: ${ENVIRONMENT}"
WORKDIR /app

COPY . .
RUN pwd
RUN ls
# RUN go get github.com/smartystreets/goconvey/convey
# # RUN cd $SRC_DIR; go get github.comcast.com/BusinessServices/mercury-client/config

ENTRYPOINT go test ./exp/... 
