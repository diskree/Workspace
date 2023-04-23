RunWait, taskkill /f /im "emulator.exe" /t, , Hide
Sleep, 2000
Run, %comspec% /c "emulator -no-audio -avd API_26 -no-boot-anim", , Hide
WinWait, Android Emulator - API_26
RunWait, ".\setup_single_emulator.ahk"
RunWait, "..\hide_emulator_menus.ahk"