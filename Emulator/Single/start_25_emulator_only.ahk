RunWait, taskkill /f /im "emulator.exe" /t, , Hide
Sleep, 2000
Run, %comspec% /c "emulator -no-audio -avd API_25 -no-boot-anim", , Hide
WinWait, Android Emulator - API_25
RunWait, ".\setup_single_emulator.ahk"
RunWait, "..\hide_emulator_menus.ahk"