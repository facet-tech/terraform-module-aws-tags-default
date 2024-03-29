### rp-terraform-elasticsearch

A Terraform module for creating a set of default tags to add to AWS resources.  Returns a map of tags.  Optional variables are highly recommend.

### Code Example
```
module "tags" {
  source      = "git@bitbucket.org:trulioo/terraform-aws-module-tags-default.git?ref=0.0.2"
  envrionment = "prod"
  product     = "ggx"
  additional_tags = {
    hello = "world"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| control\_repository\_url | The source control repository url. Highly recommended. | `string` | n/a | yes |
| description | The general description of the resource.  Highly recommended. | `string` | n/a | yes |
| environment | The depoloyment environment. Highly recommended. | `string` | n/a | yes |
| module\_repository\_url | The source control repository url. Highly recommended.  Should be set in module. | `string` | n/a | yes |
| name | The name of the resource. Highly recommended. | `string` | n/a | yes |
| product | The role of the resource. Highly recommended. | `string` | n/a | yes |
| role | The role of the resource. Highly recommended. | `string` | n/a | yes |
| additional\_tags | Additional tags to add. | `map(string)` | `{}` | no |
| contact | Who to contact. | `string` | `"devops@trulioo.com"` | no |
| date\_format | The default date format. | `string` | `"YYYY-DD-MM hh:mm:ss ZZZZZ"` | no |
| expirary\_month\_format | The default format the lambda function uses to delete resources. | `string` | `"YYYY-MM"` | no |
| expirary\_to\_add | The time in the future when resources will be deleted. | `string` | `"730h"` | no |
| provisioner | The name of the provisioner (terraform, console, cloudformation, etc). | `string` | `"terraform"` | no |
| transient\_account\_numbers | Resources created in these account numbers will automatically be deleted after expirary month. | `list(string)` | <pre>[<br>  "696666127573"<br>]</pre> | no |
| transient\_constant | n/a | `string` | `"Transient"` | no |

## Outputs

| Name | Description |
|------|-------------|
| tags | The map of the generated tags. |

