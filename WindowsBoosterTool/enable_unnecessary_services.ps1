$unnecessaryServices = @(
    "AdobeARMservice",
    "ALG",
    "AppXSvc",
    "Fax",
    "HomeGroupProvider",
    "iphlpsvc",
    "lltdsvc",
    "MapsBroker",
    "NgcSvc",
    "PNRPsvc",
    "RetailDemo",
    "SCPolicySvc",
    "SENS",
    "StorSvc",
    "TrkWks",
    "UevAgentService",
    "WbioSrvc",
    "WMPNetworkSvc",
    "WPCSvc"
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
