WinClose, ahk_exe chrome.exe
WinClose, ahk_exe chrome.exe
WinClose, ahk_exe chrome.exe

Run, C:\Program Files\Google\Chrome\Application\chrome.exe
WinWait, ahk_exe chrome.exe
WinMove, -2560, 0
WinMaximize ahk_exe chrome.exe

Run, D:\TelegramDesktop\Telegram.exe
WinWait, ahk_exe Telegram.exe
WinMove, 2560, 0
WinMove,,,,, 1281, 1440

Run, D:\Slack\Update.exe --processStart Slack.exe
WinWait, ahk_exe Slack.exe
WinMove, 3839, 0
WinMove,,,,, 1281, 1440

Run, %USERPROFILE%\AppData\Local\Programs\Notion\Notion.exe
WinWait, ahk_exe Notion.exe
WinRestore, ahk_exe Notion.exe
WinMove, -2567, 0
WinMove,,,,, 1300, 1446

Run, %USERPROFILE%\AppData\Local\Obsidian\Obsidian.exe
WinWait, ahk_exe Obsidian.exe
WinRestore, ahk_exe Obsidian.exe
WinMove, -1275, 0
WinMove,,,,, 1275, 1440

Run, D:\Flipper\Flipper.exe
WinWait, ahk_exe Flipper.exe
WinMove, 3075, 162
WinMaximize ahk_exe Flipper.exe

Run, D:\Discord\Update.exe --processStart Discord.exe
WinWait, ahk_exe Discord.exe
WinMove, -2560, 0
WinMaximize ahk_exe Discord.exe

Run, D:\Minecraft\MultiMC\MultiMC.exe
WinWait, ahk_exe MultiMC.exe
WinMove, 942, 334
WinMove,,,,, 675, 675

WinClose, Chatterino
Run, D:\Chatterino\Chatterino.exe
WinWait, ahk_exe Chatterino.exe
WinMove, 2560, 0
WinMove,,,,, 470, 1440

Run, C:\Program Files\Google\Chrome Beta\Application\chrome.exe "https://twitch.tv/directory/following"
WinWait, Following - Twitch
WinRestore, Following - Twitch
WinMove, 3021, 0
WinMove,,,,, 2106, 1446

Run, D:\IDEA\bin\idea64.exe "D:\Minecraft\Dev\AchieveToDo"
WinWait, AchieveToDo
WinMove, 0, 0
WinRestore, AchieveToDo
WinMaximize AchieveToDo

Run, C:\Users\diskree\AppData\Local\Google\Chrome SxS\Application\chrome.exe "https://fabricmc.net/wiki/tutorial:setup"
WinWait, tutorial:setup [Fabric Wiki]
WinMove, 2560, 0
WinMaximize tutorial:setup [Fabric Wiki]

Run, %comspec% /c wsl -e bash -lic "sh ~/android-studio/bin/studio.sh ~/iMe", , Hide
WinWait, iMe
WinMove, 0, 0
WinRestore, iMe
WinMaximize iMe