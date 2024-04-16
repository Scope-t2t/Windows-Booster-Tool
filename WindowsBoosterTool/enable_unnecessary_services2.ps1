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
    "WwanSvc",
    "DPS", 
    "wscsvc",
    "iphlpsvc",
    "SCardSvr",
    "sppsvc",
    "SensrSvc",
    "SysMain",
    "wuauserv",
    "DiagTrack",
    "BthHFSrv",
    "MapsBroker",
    "WpnService",
    "hidserv",
    "DsmSvc",
    "FontCache",
    "Fax",
    "SstpSvc",
    "tiledatamodelsvc",
    "AJRouter",
    "TrustedInstaller"
)


# Enable previously disabled services
foreach ($service in $unnecessaryServices) {
    # Set the startup type to automatic
    Set-Service -Name $service -StartupType Automatic -ErrorAction SilentlyContinue
    # Start the service
    Start-Service -Name $service -ErrorAction SilentlyContinue
    Write-Host "Service '$service' enabled." -ForegroundColor Green
}

Write-Host "All unnecessary services enabled." -ForegroundColor Green
