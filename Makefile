build:
	go build -ldflags "-X main.Version=`git rev-parse HEAD`"

s3proxy.jar:
	wget https://github.com/gaul/s3proxy/releases/download/s3proxy-1.6.2/s3proxy -O s3proxy.jar

get-deps: s3proxy.jar
	go get -t ./...

install:
	go install -ldflags "-X main.Version=`git rev-parse HEAD`"
