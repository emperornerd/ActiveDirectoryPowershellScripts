$DaysInactive = 700

$time = (Get-Date).Adddays(-($DaysInactive))
Get-ADComputer -Filter {LastLogonTimeStamp -gt $time} -property * | ft samaccountname