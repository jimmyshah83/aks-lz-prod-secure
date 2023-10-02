#main.tf

data "http" "aksc_release" {
  url = "https://github.com/Azure/AKS-Construction/releases/download/0.10.2/main.json"
  request_headers = {
    Accept     = "application/json"
    User-Agent = "request module"
  }
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "rg" {
  name     = var.resourceGroupName
  location = var.location
}

resource "azurerm_resource_group_template_deployment" "aksc_deploy" {
  name                = "AKS-C"
  resource_group_name = azurerm_resource_group.rg.name
  deployment_mode     = "Incremental"
  template_content    = data.http.aksc_release.response_body
  parameters_content = jsonencode({
    resourceName                   = { value = var.resourceName }
    upgradeChannel                 = { value = var.upgradeChannel }
    AksPaidSkuForSLA               = { value = var.AksPaidSkuForSLA }
    SystemPoolType                 = { value = var.SystemPoolType }
    agentCountMax                  = { value = var.agentCountMax }
    custom_vnet                    = { value = var.custom_vnet }
    bastion                        = { value = var.bastion }
    enable_aad                     = { value = var.enable_aad }
    AksDisableLocalAccounts        = { value = var.AksDisableLocalAccounts }
    enableAzureRBAC                = { value = var.enableAzureRBAC }
    adminPrincipalId               = { value = data.azurerm_client_config.current.object_id }
    registries_sku                 = { value = var.registries_sku }
    acrPushRolePrincipalId         = { value = data.azurerm_client_config.current.object_id }
    azureFirewalls                 = { value = var.azureFirewalls }
    privateLinks                   = { value = var.privateLinks }
    keyVaultIPAllowlist            = { value = var.keyVaultIPAllowlist }
    omsagent                       = { value = var.omsagent }
    retentionInDays                = { value = var.retentionInDays }
    networkPolicy                  = { value = var.networkPolicy }
    azurepolicy                    = { value = var.azurepolicy }
    availabilityZones              = { value = var.availabilityZones }
    enablePrivateCluster           = { value = var.enablePrivateCluster }
    ingressApplicationGateway      = { value = var.ingressApplicationGateway }
    appGWcount                     = { value = var.appGWcount }
    appGWsku                       = { value = var.appGWsku }
    appGWmaxCount                  = { value = var.appGWmaxCount }
    appgwKVIntegration             = { value = var.appgwKVIntegration }
    aksOutboundTrafficType         = { value = var.aksOutboundTrafficType }
    keyVaultAksCSI                 = { value = var.keyVaultAksCSI }
    keyVaultCreate                 = { value = var.keyVaultCreate }
    keyVaultOfficerRolePrincipalId = { value = data.azurerm_client_config.current.object_id }
    acrPrivatePool                 = { value = var.acrPrivatePool }
  })
}
