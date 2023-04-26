param(
[Parameter(Mandatory=$true)][string]$resourcegroupname,            #Enter the name of resource group where the secondary namespace is existing
[Parameter(Mandatory=$true)][string]$aliasname,                    #Enter the alias name     
[Parameter(Mandatory=$true)][string]$secondary_namespace,          #Enter the secondary namespace
[Parameter(Mandatory=$true)]$subscriptionId_of_secondary_namespace #Enter the subscriptionID of secondary namespace
)

#Below command invokes failover from Primary to secondary namespace by pointing alias to secondary namespace.
Set-AzServiceBusGeoDRConfigurationFailOver -Name $aliasname -NamespaceName $secondary_namespace -ResourceGroupName $resourcegroupname -SubscriptionId $subscriptionId_of_secondary_namespace
