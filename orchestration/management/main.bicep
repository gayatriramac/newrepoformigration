// ---------------------- Orchestration Bicep file ----------------------
targetScope = 'subscription'

metadata description = 'Deployment of monitoring resources.'
metadata author = 'Gayatri Ramachandran'
metadata project = 'Azure Cloud Transformation Program'
metadata workstream = 'Workstream A Platform enablement (E02, E05, E06, E10 platform)'

// ---------------------- Parameters ----------------------
@description('Required. Name Object to create resource name')
param nameObject object

@description('Required. The location where the resources to be deployed.')
param location string

// @description('Required. diagnostic settings')
// param diagnosticSettings array

// @description('Optional. timestamp')
// param timestamp string = utcNow()

// @description('Optional. The SKU name of the Log Analytics workspace.')
// param logAnalyticsWorkspaceSkuName string = 'PerGB2018'

// @description('Optional. Use resource permissions')
// param useResourcePermissions bool = true

// ---------------------- Variables ----------------------
var workloadName = 'monitoring'

// ---------------------- Resources ----------------------
resource resourceGroup 'Microsoft.Resources/resourceGroups@2024-07-01' = {
  name: toUpper(concat('${nameObject.client}-${nameObject.workloadIdentifier}-${workloadName}-${nameObject.environment}-${nameObject.region}-rg1'))
  location: location
}

// ---------------------- Modules ----------------------
// module workspace 'br/public:avm/res/operational-insights/workspace:0.9.1' = {
//   name: take('${timestamp}-logworkspace-${workloadName}', 64)
//   scope: resourceGroup
//   params: {
//     name: toUpper(concat('${nameObject.client}-${nameObject.workloadIdentifier}-${workloadName}-${nameObject.environment}-${nameObject.region}-log1'))
//     location: location
//     diagnosticSettings: diagnosticSettings
//     skuName: logAnalyticsWorkspaceSkuName
//     useResourcePermissions: useResourcePermissions
//   }
// }

// module automationAccount 'br/public:avm/res/automation/automation-account:0.11.1' = {
//   name: take('${timestamp}-automationaccount-${workloadName}', 64)
//   scope: resourceGroup
//   params: {
//     name: toUpper(concat('${nameObject.client}-${nameObject.workloadIdentifier}-${workloadName}-${nameObject.environment}-${nameObject.region}-aa1'))
//     location: location
//   }
// }
