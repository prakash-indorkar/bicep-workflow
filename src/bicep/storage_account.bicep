@description('Storage account name')
param storage_account_name string = 'st${uniqueString(resourceGroup().name)}'

@description('Storage account location')
param location string = 'australiaeast'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storage_account_name
  location: location
  kind: 'StorageV2'
  properties: {
    minimumTlsVersion: 'TLS1_2'
    allowBlobPublicAccess: false
  }
  sku: {
    name: 'Premium_LRS'
  }
}
