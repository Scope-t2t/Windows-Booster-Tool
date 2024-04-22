# List of common unnecessary services
$unnecessaryServices = @(
    "AdobeARMservice",      # Adobe Acrobat Update Service
    "ALG",                  # Application Layer Gateway Service
    "AppXSvc",              # AppX Deployment Service (AppXSVC)
    "Fax",                  # Fax Service
    "HomeGroupProvider",    # HomeGroup Provider
    "iphlpsvc",             # IP Helper Service
    "lltdsvc",              # Link-Layer Topology Discovery Mapper
    "MapsBroker",           # Downloaded Maps Manager
    "NgcSvc",               # Microsoft Passport
    "PNRPsvc",              # Peer Name Resolution Protocol
    "RetailDemo",           # Windows Retail Demo Service
    "SCPolicySvc",          # Smart Card Removal Policy
    "SENS",                 # System Event Notification Service
    "StorSvc",              # Storage Service
    "TrkWks",               # Distributed Link Tracking Client
    "UevAgentService",      # User Experience Virtualization Service
    "WbioSrvc",             # Windows Biometric Service
    "WMPNetworkSvc",        # Windows Media Player Network Sharing Service
    "WPCSvc"                # Parental Controls
)

# Disable unnecessary services
foreach ($service in $unnecessaryServices) {
    # Stop the service
    Stop-Service -Name $service -ErrorAction SilentlyContinue
    # Set the startup type to disabled
    Set-Service -Name $service -StartupType Disabled -ErrorAction SilentlyContinue
    Write-Host "Service '$service' disabled." -ForegroundColor Green
}

# Display message indicating that all unnecessary services have been disabled
Write-Host ""
Write-Host " All unnecessary services disabled." -ForegroundColor Yellow
Write-Host " TO TAKE EFFECT PLEASE RESTART YOUR PC!" -ForegroundColor Red