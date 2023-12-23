#/bin/sh

rm -rf build

GOOS=windows GOARCH=amd64 go build -gcflags "all=-N -l" -o build/mtr-windows-amd64-debug.exe main.go

GOOS=darwin GOARCH=amd64 go build -gcflags "all=-N -l" -o build/mtr-darwin-amd64-debug main.go

echo "build success."