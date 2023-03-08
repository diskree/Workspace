#!/data/data/com.termux/files/usr/bin/sh
/data/data/com.termux/files/usr/bin/su -c "settings put global adb_wifi_enabled 0"
sleep 1
/data/data/com.termux/files/usr/bin/su -c "settings put global adb_wifi_enabled 1"
sleep 1
ADB_WIFI_PORT=$(/data/data/com.termux/files/usr/bin/su -c "getprop service.adb.tls.port")
/data/data/com.termux/files/usr/bin/sshpass -p "++++" /data/data/com.termux/files/usr/bin/ssh "diskree-hyperpc\diskree@192.168.1.100" 'wsl -e bash -lic "/home/diskree-wsl/Android/Sdk/platform-tools/adb connect 192.168.1.101:'"${ADB_WIFI_PORT}"'"'