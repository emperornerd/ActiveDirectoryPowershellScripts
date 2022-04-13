$d = [DateTime]::Today.AddDays(-365)
Get-ADUser -Filter '(PasswordLastSet -lt $d) -and (LastLogonTimestamp -lt $d) -and (enabled -eq $true)' -Properties PasswordLastSet,LastLogonTimestamp |sort lastlogontimestamp | ft Name,@{N="LastLogonTimestamp";E={[datetime]::FromFileTime($_.LastLogonTimestamp)}}