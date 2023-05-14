# Task Scheduler > Action > Create Task
# --- General tab ---
# [Name] = WSL SSH
# [Run only when user is logged on] = ON
# [Run with highest privileges] = ON
# --- Triggers tab ---
# New...
# [Begin the task] = At startup
# [Delay task for] = 1 minute
# [Enabled] = ON
# --- Actions tab ---
# New...
# [Program/script] = PowerShell.exe
# [Add arguments (optional)] = -ExecutionPolicy Bypass -File D:\Workspace\WSL\wsl_ssh.ps1
# Save

$wsl_ipaddress = (wsl -d "Ubuntu" hostname -I).split(" ", 2)[0]
netsh interface portproxy delete v4tov4 listenaddress=0.0.0.0 listenport=22
netsh interface portproxy add v4tov4 listenaddress=0.0.0.0 listenport=22 connectaddress=$wsl_ipaddress connectport=22