param region string = resourceGroup().location

@description('Size of the disk in GBs')
param disk_size int

resource d1 'Microsoft.Compute/disks@2022-07-02' = {
  name: 'Disk01'
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
