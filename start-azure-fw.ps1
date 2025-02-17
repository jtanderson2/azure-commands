$azfw = Get-AzFirewall -Name "afw-hub-uks-001" -ResourceGroupName "rg-default-uks"
$vnet = Get-AzVirtualNetwork -ResourceGroupName "rg-default-uks" -Name "vnet-hub-uks-001"
$publicip = Get-AzPublicIpAddress -Name "pip-afw-hub-uks-001" -ResourceGroupName "rg-default-uks"
$azfw.Allocate($vnet,$publicip)
Set-AzFirewall -AzureFirewall $azfw
