; NSIS script for Chromium fork installer
Name "KSHub"
OutFile "KSHub.exe"
InstallDir "$PROGRAMFILES\MyFastChromium"
RequestExecutionLevel admin

Section "Install"
    SetOutPath "$INSTDIR"
    File "chromium\src\out\Light\chrome.exe"
    ; Add files/folders as needed
SectionEnd

Section "Uninstall"
    Delete "$INSTDIR\chrome.exe"
    RMDir "$INSTDIR"
SectionEnd
