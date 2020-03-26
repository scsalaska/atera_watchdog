$ServiceName = 'AteraAgent'
$arrService = Get-Service -Name $ServiceName

while ($arrService.Status -ne 'Running')
{

    Start-Service $ServiceName
    write-host $arrService.status
    write-host (date)
    write-host 'Service starting'
    $arrService.Refresh()

    if ($arrService.Status -eq 'Running')
    {
        Write-Host 'Service is now Running'
    }
}
