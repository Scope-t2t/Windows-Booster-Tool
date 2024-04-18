# List of common unnecessary services (modify as needed)
$unnecessaryServices = @(
    "AdobeARMservice",
    "ALG",
    "AppXSvc",
    "BITS",
    "DoSvc",
    "Fax",
    "HomeGroupProvider",
    "iphlpsvc",
    "lltdsvc",
    "MapsBroker",
    "NgcSvc",
    "NlaSvc",
    "PNRPsvc",
    "RetailDemo",
    "SCPolicySvc",
    "SENS",
    "SSDPSRV",
    "StorSvc",
    "Themes",
    "TrkWks",
    "UevAgentService",
    "WbioSrvc",
    "WMPNetworkSvc",
    "WPCSvc",
    "WSearch",
    "WwanSvc"
)

# Enable previously disabled services
foreach ($service in $unnecessaryServices) {
    # Set the startup type to automatic
    Set-Service -Name $service -StartupType Automatic -ErrorAction SilentlyContinue
    # Start the service
    Start-Service -Name $service -ErrorAction SilentlyContinue
    Write-Host "Service '$service' enabled." -ForegroundColor Green
}
Write-Host ""
Write-Host " All unnecessary services enabled." -ForegroundColor Yellow
Write-Host " TO TAKE EFFECT PLEASE RESTART YOUR PC!" -ForegroundColor Red
