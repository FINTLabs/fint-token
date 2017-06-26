package main

import (
	"os"

	"github.com/FINTlibs/fint-oauth-token/token"
	"github.com/codegangsta/cli"
)

func main() {

	app := cli.NewApp()
	app.Name = Name
	app.Version = Version
	app.Author = "FINTprosjektet"
	app.Email = "post@fintprosjektet.no"
	app.Usage = "Cli to get OAuth access token for FINT API's"
	app.Action = token.CmdToken
	app.Flags = GlobalFlags
	app.Commands = Commands
	app.CommandNotFound = CommandNotFound

	app.Run(os.Args)
}
