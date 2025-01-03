using './main.bicep'

param location = 'germanywestcentral'

param nameObject = {
  client: 'pxs'
  workloadIdentifier: 'myt'
  environment: 't'
  region: 'gwc'
}

// param diagnosticSettings = [
//   {
//     name: 'customSetting'
//     useThisWorkspace: true
//     logAnalyticsDestinationType: 'AzureDiagnostics'
//   }
// ]

// param logAnalyticsWorkspaceSkuName = 'PerGB2018'

// param useResourcePermissions = true
