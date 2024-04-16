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


# Disable unnecessary services
foreach ($service in $unnecessaryServices) {
    # Stop the service
    Stop-Service -Name $service -ErrorAction SilentlyContinue
    # Set the startup type to disabled
    Set-Service -Name $service -StartupType Disabled -ErrorAction SilentlyContinue
    Write-Host "Service '$service' disabled." -ForegroundColor Green
}
