RunWait, wsl --shutdown, , Hide
RunWait, wsl -e bash -lic "rm ~/java_error_in_studio*", , Hide
RunWait, powershell -command "Get-Service LxssManager | Restart-Service", , Hide
RunWait, adb kill-server, , Hide
Sleep, 2000
RunWait, taskkill /f /im vcxsrv.exe /t, , Hide
RunWait, taskkill /f /im emulator.exe /t, , Hide