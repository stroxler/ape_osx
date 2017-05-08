cd ~
version=1.8.1
wget https://storage.googleapis.com/golang/go$version.darwin-amd64.tar.gz
tar xzvf go$version.darwin-amd64.tar.gz
mv go _go
go get github.com/constabulary/gb/...
go get -u github.com/kardianos/govendor
