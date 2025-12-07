Name "KSHub"
OutFile "KSHubSetup.exe"
InstallDir "$PROGRAMFILES\KSHub"
RequestExecutionLevel admin

Section "Install"
    SetOutPath "$INSTDIR"
    File "chromium\src\out\Light\chrome.exe"
SectionEnd

Section "Uninstall"
    Delete "$INSTDIR\chrome.exe"
    RMDir "$INSTDIR"
SectionEnd
