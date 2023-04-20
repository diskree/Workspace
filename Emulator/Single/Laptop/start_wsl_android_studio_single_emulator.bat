call D:\Workspace\Windows\stop.bat
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_33_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_33_emulator.ahk"
start D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\toggle_android_studio_emulator_panels.ahk"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\hide_emulator_menus.ahk"