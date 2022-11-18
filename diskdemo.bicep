param region string = resourceGroup().location

@description('Give the name of the Disk')
param diskName string

@description('Size of the disk in GBs')
param disk_size int = 5

resource d1 'Microsoft.Compute/disks@2022-07-02' = {
  name: diskName
  location: region
  properties: {
      creationData: {
          createOption: 'Empty'
      }
      diskSizeGB: disk_size
  }
  sku: {
      name: 'Standard_LRS'
  }
}
