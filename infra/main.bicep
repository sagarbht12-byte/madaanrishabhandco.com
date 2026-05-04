param location string = 'southeastasia'
param staticWebAppName string = 'swa-madaan-ca'
param resourceGroupName string = 'rg-madaan-ca-southeast'
param gitHubOwner string
param gitHubRepo string
param gitHubBranch string = 'main'
@secure()
param appLocation string = '/'

resource staticWebApp 'Microsoft.Web/staticSites@2023-12-01' = {
  name: staticWebAppName
  location: location
  tags: {
    environment: 'production'
    project: 'madaan-ca'
    owner: 'CA Rishabh Madaan'
  }
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
  properties: {
    provider: 'GitHub'
    repositoryUrl: 'https://github.com/${gitHubOwner}/${gitHubRepo}'
    branch: gitHubBranch
    buildProperties: {
      appLocation: appLocation
      skipGithubActionWorkflowGeneration: false
    }
    enterpriseGradeCdnStatus: 'Disabled'
  }
}

output staticWebAppId string = staticWebApp.id
output staticWebAppName string = staticWebApp.name
output staticWebAppUrl string = staticWebApp.properties.defaultHostname
output staticWebAppCustomDomainUrl string = 'https://${gitHubRepo}'
