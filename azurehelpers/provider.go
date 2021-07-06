package azurehelpers

import (
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
)

func Provider() *schema.Provider {
	return &schema.Provider{
		Schema: map[string]*schema.Schema{},
		DataSourcesMap: map[string]*schema.Resource{
			"azurehelpers_resource_id": dataSourceResourceId(),
		},
	}
}
