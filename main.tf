terraform {
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "~> 3"
    }
  }
}

provider "http" {}


data "http" "my_api_token_map" {
  url = "https://api.cyberjake.xyz/cloudflare_api/token_permissions"
  lifecycle {
    postcondition {
      condition     = self.status_code == 200
      error_message = "Failed to download the api tokens"
    }
  }
}

locals {
  api_tokens = jsondecode(data.http.my_api_token_map.response_body)
}
