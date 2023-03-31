wsl --shutdown
wsl -e bash -lic "rm ~/java_error_in_studio*"
powershell -command "Get-Service LxssManager | Restart-Service"
adb kill-server
timeout 2
taskkill /f /im "vcxsrv.exe" /t
taskkill /f /im "autohotkey.exe" /t
taskkill /f /im "emulator.exe" /t
taskkill /f /im "idea64.exe" /t
start "C:\Program Files\VcXsrv\vcxsrv.exe" "D:\Workspace\Common\config.xlaunch"