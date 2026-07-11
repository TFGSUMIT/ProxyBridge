!include "MUI2.nsh"

Name "ProxyBridge"
Caption "ProxyBridge Installer"

RequestExecutionLevel admin

Section "Main"
  SetOutPath "$INSTDIR"
  File "ProxyBridge.exe"
  WriteRegStr HKCU "Software\ProxyBridge" "RunAtStartup" "1"
SectionEnd

Section "Uninstall"
  Delete "$INSTDIR\ProxyBridge.exe"
  DeleteRegKey HKCU "Software\ProxyBridge"
SectionEnd