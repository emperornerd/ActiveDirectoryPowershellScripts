do
{
    try {
    [ValidatePattern('^[0-9]+$')]$days= Read-Host "Enter a servername (serverXXXX)" 
    } catch {}
} until ($?)