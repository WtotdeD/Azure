$user = "sirwtotded@outlook.com"
#Script to see if I am logged

#save current context into variable
$context = (get-Azcontext)
$contextN = $context.Account.Id


if (($contextN -ne $user) -or ([string]::IsNullOrEmpty($context)))
{
    write-host 1
}
else
{
    Write-Host "The following: $user is logged in"}


