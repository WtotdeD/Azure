. D:\Code\Scripting\Powershell\PowershellAz\fn_Login_Az.ps1


#module to create resourcegroup
$lesson = "0106_RECAP"
Get-AzResourceGroup -name $lesson -ErrorVariable notPresent -ErrorAction SilentlyContinue

if($notpresent)
{
    New-AzResourceGroup -Name $lesson -Location 'West Europe'
}

else{"Resourcegroup $lesson already present, add resources to existing"}



#create new vm

New-AzVirtualNetwork -Name $lesson + "vnet" -ResourceGroupName $lesson 
New-AzVM -Name 01-01-vm-test -ResourceGroupName $lesson -Location 'West Europe' -VirtualNetworkName $lesson + "vnet" 

