# terraform-cloudflare-api-permissions

This is a simple terraform modules gets all the possible permissions for a Cloudflare API token and outputs them as a list of strings.
Can use as a replacement for `cloudflare_api_token_permission_groups` data source.
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_http"></a> [http](#requirement\_http) | ~> 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | ~> 3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [http_http.my_api_token_map](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account"></a> [account](#output\_account) | Account API permissions |
| <a name="output_r2"></a> [r2](#output\_r2) | R2 API permissions |
| <a name="output_user"></a> [user](#output\_user) | User API permissions |
| <a name="output_zone"></a> [zone](#output\_zone) | Zone API permissions |
<!-- END_TF_DOCS -->