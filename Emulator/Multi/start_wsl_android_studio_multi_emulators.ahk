RunWait, "D:\Workspace\WSL\stop.ahk"
Run, "D:\Workspace\Common\config.xlaunch", , Hide
RunWait, adb kill-server, , Hide
Run, adb -a nodaemon server start, , Hide
Run, emulator -no-audio -avd API_23 -no-boot-anim, , Hide
WinWait, Android Emulator - API_23
Sleep, 2000
Run, emulator -no-audio -avd API_24 -no-boot-anim, , Hide
WinWait, Android Emulator - API_24
Sleep, 2000
Run, emulator -no-audio -avd API_25 -no-boot-anim, , Hide
WinWait, Android Emulator - API_25
Sleep, 2000
Run, emulator -no-audio -avd API_26 -no-boot-anim, , Hide
WinWait, Android Emulator - API_26
Sleep, 2000
Run, emulator -no-audio -avd API_27 -no-boot-anim, , Hide
WinWait, Android Emulator - API_27
Sleep, 2000
Run, emulator -no-audio -avd API_28 -no-boot-anim, , Hide
WinWait, Android Emulator - API_28
Sleep, 2000
Run, emulator -no-audio -avd API_29 -no-boot-anim, , Hide
WinWait, Android Emulator - API_29
Sleep, 2000
Run, emulator -no-audio -avd API_30 -no-boot-anim, , Hide
WinWait, Android Emulator - API_30
Sleep, 2000
Run, emulator -no-audio -avd API_31 -no-boot-anim, , Hide
WinWait, Android Emulator - API_31
Sleep, 2000
Run, emulator -no-audio -avd API_33 -no-boot-anim, , Hide
WinWait, Android Emulator - API_33
Run, %comspec% /c wsl -e bash -c "socat -d -d TCP-LISTEN:5037`,reuseaddr`,fork TCP:$(cat /etc/resolv.conf | tail -n1 | cut -d ' ' -f 2):5037", , Hide
Run, "D:\Workspace\Emulator\toggle_android_studio_emulator_panels.ahk"
RunWait, "D:\Workspace\Emulator\hide_emulator_menus.ahk"
RunWait, "VirtualDesktop.exe" "-Remove:Desktop_2", , Hide
RunWait, "VirtualDesktop.exe" "-Remove:Desktop_3", , Hide
RunWait, "VirtualDesktop.exe" "-Remove:Desktop_4", , Hide

RunWait, taskkill /f /im chrome.exe /t, , Hide
RunWait, taskkill /f /im chatterino.exe /t, , Hide
RunWait, taskkill /f /im flipper.exe /t, , Hide
RunWait, taskkill /f /im notion.exe /t, , Hide
RunWait, taskkill /f /im obsidian.exe /t, , Hide
RunWait, taskkill /f /im telegram.exe /t, , Hide
RunWait, taskkill /f /im slack.exe /t, , Hide
RunWait, taskkill /f /im discord.exe /t, , Hide
RunWait, taskkill /f /im multimc.exe /t, , Hide
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

FileRead, preferences, %USERPROFILE%\AppData\Local\Google\Chrome Beta\User Data\Default\Preferences
preferences := StrReplace(preferences, """exit_type"":""Crashed""", """exit_type"":""none""")
FileDelete, %USERPROFILE%\AppData\Local\Google\Chrome Beta\User Data\Default\Preferences
FileAppend, %preferences%, %USERPROFILE%\AppData\Local\Google\Chrome Beta\User Data\Default\Preferences

FileRead, preferences, %USERPROFILE%\AppData\Local\Google\Chrome SxS\User Data\Default\Preferences
preferences := StrReplace(preferences, """exit_type"":""Crashed""", """exit_type"":""none""")
FileDelete, %USERPROFILE%\AppData\Local\Google\Chrome SxS\User Data\Default\Preferences
FileAppend, %preferences%, %USERPROFILE%\AppData\Local\Google\Chrome SxS\User Data\Default\Preferences

Run, C:\Program Files\Google\Chrome\Application\chrome.exe --profile-directory="Default",,, chrome_1_pid
WinWait, ahk_pid %chrome_1_pid%
WinMove, -2560, 0
WinMaximize ahk_pid %chrome_1_pid%

Run, D:\TelegramDesktop\Telegram.exe,,, telegram_pid
WinWait, ahk_pid %telegram_pid%
WinMove,,, 2560, 0, 1281, 1440

Run, D:\Slack\Update.exe --processStart Slack.exe
WinWait, ahk_exe slack.exe
WinMove,,, 3839, 0, 1281, 1440

Run, %USERPROFILE%\AppData\Local\Programs\Notion\Notion.exe,,, notion_pid
WinWait, ahk_pid %notion_pid%
WinRestore, ahk_pid %notion_pid%
WinMove,,, -2567, 0, 1300, 1446

Run, %USERPROFILE%\AppData\Local\Obsidian\Obsidian.exe,,, obsidian_pid
WinWait, ahk_pid %obsidian_pid%
WinRestore, ahk_pid %obsidian_pid%
WinMove,,, -1275, 0, 1275, 1440

Run, D:\Flipper\Flipper.exe,,, flipper_pid
WinWait, ahk_pid %flipper_pid%
WinMove, 3075, 162
WinMaximize ahk_pid %flipper_pid%

Run, D:\Discord\Update.exe --processStart Discord.exe
WinWait, ahk_exe discord.exe
WinMove, -2560, 0
WinMaximize ahk_exe discord.exe

Run, D:\Minecraft\MultiMC\MultiMC.exe,,, multimc_pid
WinWait, ahk_pid %multimc_pid%
WinMove,,, 942, 334, 675, 675

Run, D:\Chatterino\Chatterino.exe,,, chatterino_pid
WinWait, ahk_pid %chatterino_pid%
WinMove,,, 2560, 0, 470, 1440

Run, C:\Program Files\Google\Chrome Beta\Application\chrome.exe --profile-directory="Default",,, chrome_2_pid
WinWait, ahk_pid %chrome_2_pid%
WinRestore, ahk_pid %chrome_2_pid%
WinMove,,, 3021, 0, 2106, 1446

Run, D:\IDEA\bin\idea64.exe "D:\Minecraft\Dev\AchieveToDo",,, idea_pid
WinWait, ahk_pid %idea_pid%
WinMove, 0, 0
WinRestore, ahk_pid %idea_pid%
WinMaximize ahk_pid %idea_pid%

Run, %USERPROFILE%\AppData\Local\Google\Chrome SxS\Application\chrome.exe --profile-directory="Default",,, chrome_3_pid
WinWait, ahk_pid %chrome_3_pid%
WinMove, 2560, 0
WinMaximize ahk_pid %chrome_3_pid%

Run, %comspec% /c wsl -e bash -lic "sh ~/android-studio/bin/studio.sh ~/iMe", , Hide
WinWait, iMe
WinMove, 0, 0
WinRestore, iMe
WinMaximize iMe

RunWait, "D:\Workspace\Emulator\Multi\setup_emulators_33_center.ahk"

RunWait, "VirtualDesktop.exe" "-New" "-Name:Desktop_2", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindow:%notion_pid%", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindow:%obsidian_pid%", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindow:%flipper_pid%", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Android Emulator - API_23", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Android Emulator - API_24", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Android Emulator - API_25", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Android Emulator - API_26", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Android Emulator - API_27", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Android Emulator - API_28", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Android Emulator - API_29", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Android Emulator - API_30", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Android Emulator - API_31", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_2" "-MoveWindowHandle:Android Emulator - API_33", , Hide

RunWait, "VirtualDesktop.exe" "-New" "-Name:Desktop_3", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_3" "-MoveWindowHandle:Discord", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_3" "-MoveWindow:%multimc_pid%", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_3" "-MoveWindow:%chatterino_pid%", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_3" "-MoveWindow:%chrome_2_pid%", , Hide

RunWait, "VirtualDesktop.exe" "-New" "-Name:Desktop_4", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_4" "-MoveWindow:%idea_pid%", , Hide
RunWait, "VirtualDesktop.exe" "-GetDesktop:Desktop_4" "-MoveWindow:%chrome_3_pid%", , Hide