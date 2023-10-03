#variables.tf

variable "resourceGroupName" {
  type    = string
  default = "js-lza-aks-demo"
}
variable "location" {
  type    = string
  default = "CanadaCentral"
}
variable "resourceName" {
  type    = string
  default = "lza-demo"
}
variable "kubernetesVersion" {
  type    = string
  default = "1.27.3"
}
variable "upgradeChannel" {
  type    = string
  default = "stable"
}
variable "AksPaidSkuForSLA" {
  type    = bool
  default = true
}
variable "SystemPoolType" {
  type    = string
  default = "Standard"
}
variable "agentCountMax" {
  type    = number
  default = 20
}
variable "custom_vnet" {
  type    = bool
  default = true
}
variable "bastion" {
  type    = bool
  default = true
}
variable "enable_aad" {
  type    = bool
  default = true
}
variable "AksDisableLocalAccounts" {
  type    = bool
  default = true
}
variable "enableAzureRBAC" {
  type    = bool
  default = true
}
variable "registries_sku" {
  type    = string
  default = "Premium"
}
variable "azureFirewalls" {
  type    = bool
  default = true
}
variable "privateLinks" {
  type    = bool
  default = true
}
variable "keyVaultIPAllowlist" {
  default = ["74.15.103.142/32"]
}
variable "omsagent" {
  type    = bool
  default = true
}
variable "retentionInDays" {
  type    = number
  default = 30
}
variable "networkPolicy" {
  type    = string
  default = "azure"
}
variable "azurepolicy" {
  type    = string
  default = "deny"
}
variable "availabilityZones" {
  default = ["1", "2", "3"]
}
variable "enablePrivateCluster" {
  type    = bool
  default = true
}
variable "ingressApplicationGateway" {
  type    = bool
  default = true
}
variable "appGWcount" {
  type    = number
  default = 0
}
variable "appGWsku" {
  type    = string
  default = "WAF_v2"
}
variable "appGWmaxCount" {
  type    = number
  default = 10
}
variable "appgwKVIntegration" {
  type    = bool
  default = true
}
variable "aksOutboundTrafficType" {
  type    = string
  default = "userDefinedRouting"
}
variable "keyVaultAksCSI" {
  type    = bool
  default = true
}
variable "keyVaultCreate" {
  type    = bool
  default = true
}
variable "fluxGitOpsAddon" {
  type    = bool
  default = true
}
variable "acrPrivatePool" {
  type    = bool
  default = true
}
variable "oidcIssuer" {
  type    = bool
  default = true
}
variable "workloadIdentity" {
  type    = bool
  default = true
}
