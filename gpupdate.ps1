$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
$computers = get-content $dir\computers.txt
foreach ($computer in $computers)
{echo $computer
psexec -i \\$computer -c $dir\gpupdate.bat
}
