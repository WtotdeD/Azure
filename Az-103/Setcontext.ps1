#Check if I am logged in
. .\loginID.ps1

#Context to choise from
$LearningAzureTID = "9050d994-4b18-4edb-bdbc-b93979c4b2b7"
$ConciergeTID = "604c1504-c6a3-4080-81aa-b33091104187" 

#save current context into variable
$context = (get-Azcontext)
$contextN = $Context.Name
$contextTID = $Context.Tenant.ID

if (($context.Tenant.ID -ne $LearningAzureTID) -or ([string]::IsNullOrEmpty($context)))
{
    Set-AzContext -TenantId $LearningAzureTID
}
else
{
    Write-Host "The following tenant $ContextN; ID: $ContextTID  is already set "
}

Get-AzSubscription




