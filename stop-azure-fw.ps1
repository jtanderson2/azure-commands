$azfw = Get-AzFirewall -Name "afw-hub-uks-001" -ResourceGroupName "rg-default-uks"
$azfw.Deallocate()
Set-AzFirewall -AzureFirewall $azfw
