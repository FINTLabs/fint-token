# fint-token

[![Go Report Card](https://goreportcard.com/badge/github.com/FINTprosjektet/fint-token)](https://goreportcard.com/report/github.com/FINTprosjektet/fint-token)

## Description
Cli to get OAuth access token for FINT API's

## Usage
```
$ fint-token --help
NAME:
   fint-token - Cli to get OAuth access token for FINT API's

USAGE:
   fint-token [global options] command [command options] [arguments...]

VERSION:
   1.1.0

AUTHOR:
   FINTprosjektet <post@fintprosjektet.no>

COMMANDS:
     help, h  Shows a list of commands or help for one command

GLOBAL OPTIONS:
   --username value, -u value       username
   --password value, -p value       password
   --client_id value, -i value      OAuth2 client id
   --client_secret value, -s value  OAuth2 client secret
   --help, -h                       show help
   --version, -v                    print the version
```

## Install

### Binaries

Precompiled binaries can be downloaded [here](https://github.com/FINTprosjektet/fint-token/releases/latest)

### Go

To install, use `go get`:

```bash
$ go get github.com/FINTprosjektet/fint-token
$ go install github.com/FINTprosjektet/fint-token
```

## Author

[FINTprosjektet](https://fintprosjektet.github.io)
