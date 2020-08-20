$AzureLearn = "LearningAzure"
$LearningAzureTID = "9050d994-4b18-4edb-bdbc-b93979c4b2b7"
$ConciergeTID = "604c1504-c6a3-4080-81aa-b33091104187" 

#save current context into variable
$context = (get-Azcontext -name $AzureLearn)
$contextN = $context.Name
$contextS = $context.SubscriptionId
write-host $contextS


if (($context.Subscription.ID -ne $ContextS) -or ([string]::IsNullOrEmpty($context)))
{
    Set-AzContext -SubscriptionId $context.
}
else
{
    Write-Host "Context $ContextS with $ContextN' is set "
}

Get-AzSubscription




