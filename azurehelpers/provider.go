package azurehelpers

import (
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
)

func init() {
	schema.DescriptionKind = schema.StringMarkdown
}

func New(version string) func() *schema.Provider {
	return func() *schema.Provider {
		return &schema.Provider{
			DataSourcesMap: map[string]*schema.Resource{
				"azurehelpers_resource_id": dataSourceResourceId(),
			},
		}
	}
}
