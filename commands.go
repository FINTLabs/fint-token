package main

import (
	"fmt"
	"os"

	"github.com/FINTlibs/fint-oauth-token/token"
	"github.com/codegangsta/cli"
)

// GlobalFlags contains a list of global flags
var GlobalFlags = token.GetTokenFlags()

// Commands contains a list of commands
var Commands = []cli.Command{}

// CommandNotFound prints out a message when there is no command found
func CommandNotFound(c *cli.Context, command string) {
	fmt.Fprintf(os.Stderr, "%s: '%s' is not a %s command. See '%s --help'.", c.App.Name, command, c.App.Name, c.App.Name)
	os.Exit(2)
}
