insmod ./mt7601Usta.ko
ifconfig ra0 up
./wpa_supplicant -Dwext -i ra0 -c wpa_supplicant.conf -d &
sleep 4
udhcpc -i ra0

