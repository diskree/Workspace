RunWait, %ComSpec% /c del /s /f /q "%USERPROFILE%\Recent\*.*"
RunWait, %ComSpec% /c del /s /f /q "C:\Windows\Prefetch\*.*"
RunWait, %ComSpec% /c del /s /f /q "C:\Windows\Temp\*.*"
RunWait, %ComSpec% /c del /s /f /q "%USERPROFILE%\AppData\Local\Temp\*.*"