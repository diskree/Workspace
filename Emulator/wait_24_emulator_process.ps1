Get-Content D:\WSL\log_24_emulator.txt -wait | Where-Object { if ( $_ -match "Setting display" ) { break } else { if ( $_ -match "Unable to create socket pair" ) { wscript.exe "D:\WSL\invisible.vbs" "D:\WSL\start_24_emulator.bat" } } }