# Import the AD module to the session

Import-Module ActiveDirectory

#Search for the users and export report

get-aduser -filter * -properties Name, PasswordNeverExpires | where {
$_.passwordNeverExpires -eq "true" } |  Select-Object Name,Enabled
