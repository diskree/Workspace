taskkill /f /im "emulator.exe" /t
timeout 2
wscript.exe "D:\WSL\invisible.vbs" "D:\WSL\start_26_emulator.bat"
powershell.exe -executionpolicy remotesigned -File D:\WSL\wait_26_emulator_process.ps1
start /wait D:\AHK\bin\AutoHotkey.exe "D:\WSL\wait_26_emulator.ahk"
start /wait D:\AHK\bin\AutoHotkey.exe "D:\WSL\setup_single_emulator.ahk"
start /wait D:\AHK\bin\AutoHotkey.exe "D:\WSL\hide_emulator_menus.ahk"