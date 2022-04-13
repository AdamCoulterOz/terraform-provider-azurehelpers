package main

import (
	"flag"

	"github.com/AdamCoulterOz/terraform-provider-azurehelpers/azurehelpers"
	"github.com/hashicorp/terraform-plugin-sdk/v2/plugin"
)

var (
	// these will be set by the goreleaser configuration
	// to appropriate values for the compiled binary
	version string = "dev"
)

func main() {
	var debugMode bool

	flag.BoolVar(&debugMode, "debug", false, "set to true to run the provider with support for debuggers like delve")
	flag.Parse()

	opts := &plugin.ServeOpts{
		Debug:        debugMode,
		ProviderAddr: "registry.terraform.io/AdamCoulterOz/azurehelpers",
		ProviderFunc: azurehelpers.New(version),
	}

	plugin.Serve(opts)
}
