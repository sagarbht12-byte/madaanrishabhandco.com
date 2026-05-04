using './main.bicep'

param location = 'southeastasia'
param staticWebAppName = 'swa-madaan-ca'
param resourceGroupName = 'rg-madaan-ca-southeast'
param gitHubOwner = 'your-github-username'
param gitHubRepo = 'madaanrishabhandco.com'
param gitHubBranch = 'main'
param gitHubToken = ''  // Provide via command line: --parameters gitHubToken=<your-token>
param appLocation = '/'
