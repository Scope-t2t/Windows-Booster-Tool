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

# Enable previously disabled services
foreach ($service in $unnecessaryServices) {
    # Set the startup type to automatic
    Set-Service -Name $service -StartupType Automatic -ErrorAction SilentlyContinue
    # Start the service
    Start-Service -Name $service -ErrorAction SilentlyContinue
    Write-Host "Service '$service' enabled." -ForegroundColor Green
}

# Display message indicating that all unnecessary services have been enabled
Write-Host ""
Write-Host " All unnecessary services enabled." -ForegroundColor Yellow
Write-Host " TO TAKE EFFECT PLEASE RESTART YOUR PC!" -ForegroundColor Red
