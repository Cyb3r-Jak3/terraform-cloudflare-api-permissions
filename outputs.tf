output "user" {
    value = {for token in local.api_tokens : token.name => token.id if token.scopes[0] == "com.cloudflare.api.user"}
    description = "User API permissions"
}
output "zone" {
    value = {for token in local.api_tokens : token.name => token.id if token.scopes[0] == "com.cloudflare.api.account.zone"}
    description = "Zone API permissions"
}
output "account" {
    value = {for token in local.api_tokens : token.name => token.id if token.scopes[0] == "com.cloudflare.api.account"}
    description = "Account API permissions"
}
output "r2" {
  value = {for token in local.api_tokens : token.name => token.id if token.scopes[0] == "com.cloudflare.edge.r2.bucket"}
    description = "R2 API permissions"
}