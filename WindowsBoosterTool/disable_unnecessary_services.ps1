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

# Disable unnecessary services
foreach ($service in $unnecessaryServices) {
    # Stop the service
    Stop-Service -Name $service -ErrorAction SilentlyContinue
    # Set the startup type to disabled
    Set-Service -Name $service -StartupType Disabled -ErrorAction SilentlyContinue
    Write-Host "Service '$service' disabled." -ForegroundColor Green
}

Write-Host ""
Write-Host " All unnecessary services disabled." -ForegroundColor Yellow
Write-Host " TO TAKE EFFECT PLEASE RESTART YOUR PC!" -ForegroundColor Red
