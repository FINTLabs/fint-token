#!/bin/bash

VERSION=${TAG_NAME#v}
VERSION=${VERSION:-${BUILD_TAG}}
echo Version is $VERSION
cat > version.go <<EOF
package main

// Name of the app
const Name string = "fint-token"

// Version of the app
const Version string = "${VERSION}"

EOF
