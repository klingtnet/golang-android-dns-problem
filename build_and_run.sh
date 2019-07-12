#!/bin/bash

set -euo pipefail

# native build
CGO_CFLAGS=-I"$PWD/android-ndk-r20/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/include/" CGO_ENABLED=1 GOOS=android GOARCH=arm64 GOARM=7 go build -o dns-test-arm64 main.go
adb push --sync dns-test-arm64 /data/local/tmp/dns-test-arm64
adb shell GODEBUG=netdns=go /data/local/tmp/dns-test-arm64
