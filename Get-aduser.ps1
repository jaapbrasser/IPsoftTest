# make an array of the OU DNs you care about
$TargetOUs = @()
$TargetOUs += "OU=SSF,OU=Group,DC=emea,DC=group,DC=atlascopco,DC=com"
$TargetOUs += "OU=BES,OU=CR,DC=emea,DC=group,DC=atlascopco,DC=com"
$TargetOUs += "OU=BES,OU=CMT,DC=emea,DC=group,DC=atlascopco,DC=com"

ForEach ($OU in $TargetOUs) {Get-ADUser -SearchBase $OU -Properties Name,SamAccountName,EmailAddress -Filter 'enabled -eq $true' | Export-Csv -NoTypeInformation "c:\temp\Emea_Active_User.csv" -Append}