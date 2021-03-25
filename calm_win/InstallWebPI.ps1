# Install WPI
New-Item c:/msi -Type Directory
Invoke-WebRequest 'http://download.microsoft.com/download/C/F/F/CFF3A0B8-99D4-41A2-AE1A-496C08BEB904/WebPlatformInstaller_amd64_en-US.msi' -OutFile c:/msi/WebPlatformInstaller_amd64_en-US.msi
Start-Process 'c:/msi/WebPlatformInstaller_amd64_en-US.msi' '/qn' -PassThru | Wait-Process

Invoke-WebRequest 'http://download.microsoft.com/download/d/d/1/dd194c5c-d859-49b8-ad64-5cbdcbb9b7bd/SQLSysClrTypes.msi' -OutFile c:/msi/SQLSysClrTypes.msi-x86.msi
Start-Process 'c:/msi/SQLSysClrTypes.msi-x86.msi' '/qn' -PassThru | Wait-Process