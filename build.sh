#!/usr/bin/env sh


rm -rf build

mkdir build
cd build
mkdir windows
mkdir mac
mkdir linux

cd ..
CGO_ENABLED=0 GOOS=windows go build -o ./build/windows/fint-token.exe
CGO_ENABLED=0 GOOS=darwin go build -o ./build/mac/fint-token
CGO_ENABLED=0 GOOS=linux go build -o ./build/linux/fint-token

zip build/windows.zip ./build/windows/fint-token.exe
zip build/linux.zip ./build/linux/fint-token
#zip build/mac.zip ./build/mac/fint-token
/usr/bin/pkgbuild \
    --root ./build/mac/ \
    --identifier "no.fint.fint-token" \
    --install-location "/usr/local/fint" \
    --version "1.0.0" \
    --scripts ./pkg-script \
    "./build/fint-token.pkg"
