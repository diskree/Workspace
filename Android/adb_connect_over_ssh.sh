/data/data/com.termux/files/usr/bin/su -c "settings put global adb_wifi_enabled 0"
sleep 1
/data/data/com.termux/files/usr/bin/su -c "settings put global adb_wifi_enabled 1"
sleep 1
ADB_WIFI_PORT=$(/data/data/com.termux/files/usr/bin/su -c "getprop service.adb.tls.port")
. /data/data/com.termux/files/home/.scripts/config
/data/data/com.termux/files/usr/bin/sshpass -p "$PC_PASSWORD" /data/data/com.termux/files/usr/bin/ssh "${PC_HOST}@${PC_IP}" 'adb connect '"${OP9PRO_IP}"':'"${ADB_WIFI_PORT}"''