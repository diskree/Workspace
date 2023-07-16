RunWait, "D:\Workspace\WSL\stop.ahk"
Run, "D:\Workspace\Common\config.xlaunch", , Hide
RunWait, adb kill-server, , Hide
Run, adb -a nodaemon server start, , Hide
Run, emulator -no-audio -avd API_33 -no-boot-anim, , Hide
WinWait, Android Emulator - API_33
Run, %comspec% /c wsl -e bash -c "socat -d -d TCP-LISTEN:5037`,reuseaddr`,fork TCP:$(cat /etc/resolv.conf | tail -n1 | cut -d ' ' -f 2):5037", , Hide
Run, "D:\Workspace\Emulator\toggle_android_studio_emulator_panels.ahk"
RunWait, "D:\Workspace\Emulator\hide_emulator_menus.ahk"

RunWait, "VirtualDesktop.exe" "-Remove:Desktop_2", , Hide

RunWait, taskkill /f /im chrome.exe /t, , Hide
RunWait, taskkill /f /im flipper.exe /t, , Hide
RunWait, taskkill /f /im telegram.exe /t, , Hide
RunWait, taskkill /f /im slack.exe /t, , Hide
RunWait, taskkill /f /im idea64.exe /t, , Hide

FileRead, preferences, %USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Preferences
preferences := StrReplace(preferences, """exit_type"":""Crashed""", """exit_type"":""none""")
FileDelete, %USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Preferences
FileAppend, %preferences%, %USERPROFILE%\AppData\Local\Google\Chrome\User Data\Default\Preferences

FileRead, preferences, %USERPROFILE%\AppData\Local\Google\Chrome\User Data\Profile 1\Preferences
preferences := StrReplace(preferences, """exit_type"":""Crashed""", """exit_type"":""none""")
FileDelete, %USERPROFILE%\AppData\Local\Google\Chrome\User Data\Profile 1\Preferences
FileAppend, %preferences%, %USERPROFILE%\AppData\Local\Google\Chrome\User Data\Profile 1\Preferences

FileRead, preferences, %USERPROFILE%\AppData\Local\Google\Chrome\User Data\Profile 2\Preferences
preferences := StrReplace(preferences, """exit_type"":""Crashed""", """exit_type"":""none""")
FileDelete, %USERPROFILE%\AppData\Local\Google\Chrome\User Data\Profile 2\Preferences
FileAppend, %preferences%, %USERPROFILE%\AppData\Local\Google\Chrome\User Data\Profile 2\Preferences

Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Default",,, chrome_1_pid
WinWait, ahk_pid %chrome_1_pid%
WinMove, -2560, 0
WinMaximize ahk_pid %chrome_1_pid%

Run, D:\Flipper\Flipper.exe,,, flipper_pid
WinWait, ahk_pid %flipper_pid%
WinRestore, ahk_pid %flipper_pid%
WinMove,,, 3235, 0, 1892, 1446

Run, D:\TelegramDesktop\Telegram.exe,,, telegram_pid
WinWait, ahk_pid %telegram_pid%
WinMove,,, 2560, 0, 1281, 1440

Run, %USERPROFILE%\AppData\Local\slack\Update.exe --processStart slack.exe
WinWait, ahk_exe slack.exe
WinMove,,, 3839, 0, 1281, 1440

Run, D:\IDEA\bin\idea64.exe "D:\JavaKotlinTest",,, idea_pid
WinWait, ahk_pid %idea_pid%
WinMove, 0, 0
WinRestore, ahk_pid %idea_pid%
WinMaximize ahk_pid %idea_pid%

Run, %comspec% /c wsl -e bash -lic "sh ~/android-studio/bin/studio.sh ~/iMe", , Hide
WinWait, iMe
WinMove, 0, 0
WinRestore, iMe
WinMaximize iMe

Run, %comspec% /c wsl -e bash -lic "sh ~/android-studio/bin/studio.sh ~/iMeOld", , Hide
WinWait, iMeOld
WinMove, -2560, 0
WinRestore, iMeOld
WinMaximize iMeOld

Run, %comspec% /c wsl -e bash -lic "sh ~/android-studio/bin/studio.sh ~/Telegram", , Hide
WinWait, Telegram
WinMove, Telegram, , 3833, 0, 1293, 1445

Run, %comspec% /c wsl -e bash -lic "sh ~/android-studio/bin/studio.sh ~/TelegramOld", , Hide
WinWait, TelegramOld
WinMove, TelegramOld, , 2553, 0, 1294, 1445

RunWait, "D:\Workspace\Emulator\Single\setup_single_emulator.ahk"

RunWait, "VirtualDesktop.exe" "-New" "-Name:Desktop_2", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindow:%idea_pid%", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindow:%telegram_pid%", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Slack", , Hide
