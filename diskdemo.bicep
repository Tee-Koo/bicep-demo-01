resource d1 'Microsoft.Compute/disks@2022-07-02' = {
  name: 'Disk01'
  location: resourceGroup().location
  properties: {
      creationData: {
          createOption: 'Empty'
      }
      diskSizeGB: 10
  }
  sku: {
      name: 'Standard_LRS'
  }
}
