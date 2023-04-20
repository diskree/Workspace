call D:\Workspace\Windows\stop.bat
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_23_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_23_emulator.ahk"
timeout 2
adb devices
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_24_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_24_emulator.ahk"
timeout 2
adb devices
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_25_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_25_emulator.ahk"
timeout 2
adb devices
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_26_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_26_emulator.ahk"
timeout 2
adb devices
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_27_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_27_emulator.ahk"
timeout 2
adb devices
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_28_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_28_emulator.ahk"
timeout 2
adb devices
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_29_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_29_emulator.ahk"
timeout 2
adb devices
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_30_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_30_emulator.ahk"
timeout 2
adb devices
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_31_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_31_emulator.ahk"
timeout 2
adb devices
wscript.exe "D:\Workspace\Common\invisible.vbs" "D:\Workspace\Emulator\start_33_emulator.bat"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\wait_33_emulator.ahk"
timeout 2
adb devices
start D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\toggle_android_studio_emulator_panels.ahk"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\hide_emulator_menus.ahk"
start /wait VirtualDesktop.exe "-Remove:Desktop_2"
start /wait VirtualDesktop.exe "-Remove:Desktop_3"
start /wait VirtualDesktop.exe "-Remove:Desktop_4"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\Multi\setup_multi_emulators_workspace.ahk"
start /wait D:\AHK\AutoHotkey.exe "D:\Workspace\Emulator\Multi\setup_emulators_33_center.ahk"
start /wait VirtualDesktop.exe "-New" "-Name:Desktop_2" "-MoveWindowHandle:N^^otion - Home" "-MoveWindowHandle:O^bsidian" "-MoveWindowHandle:Android Emulator - API_^^23" "-MoveWindowHandle:Android Emulator - API_^^24" "-MoveWindowHandle:Android Emulator - API_^^25" "-MoveWindowHandle:Android Emulator - API_^^26" "-MoveWindowHandle:Android Emulator - API_^^27" "-MoveWindowHandle:Android Emulator - API_^^28" "-MoveWindowHandle:Android Emulator - API_^^29" "-MoveWindowHandle:Android Emulator - API_^^30" "-MoveWindowHandle:Android Emulator - API_^^31" "-MoveWindowHandle:Android Emulator - API_^^33" "-MoveWindowHandle:F^^lipper"
start /wait VirtualDesktop.exe "-New" "-Name:Desktop_3" "-MoveWindowHandle:D^^iscord" "-MoveWindowHandle:M^^ultiMC" "-MoveWindowHandle:C^^hatterino" "-MoveWindowHandle:F^^ollowing - Twitch"
start /wait VirtualDesktop.exe "-New" "-Name:Desktop_4" "-MoveWindowHandle:A^^chieveToDo" "-MoveWindowHandle:F^^abric Wiki"