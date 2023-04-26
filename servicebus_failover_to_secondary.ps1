param(
[Parameter(Mandatory=$true)][string]$secondary_servicebus_resource_group_name,            #Enter the name of resource group where the secondary namespace is existing
[Parameter(Mandatory=$true)][string]$servicebus_aliasname,                                #Enter the alias name     
[Parameter(Mandatory=$true)][string]$secondary_servicebus_namespace_name,                 #Enter the secondary namespace
[Parameter(Mandatory=$true)]$subscriptionId_of_secondary_namespace                        #Enter the subscriptionID of secondary namespace
)

#Below command invokes failover from Primary to secondary namespace by pointing alias to secondary namespace.
Set-AzServiceBusGeoDRConfigurationFailOver -Name $servicebus_aliasname -NamespaceName $secondary_servicebus_namespace_name -ResourceGroupName $secondary_servicebus_resource_group_name -SubscriptionId $subscriptionId_of_secondary_namespace
