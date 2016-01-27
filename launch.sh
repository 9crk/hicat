export PATH=$PATH:/hicat
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/hicat
insmod ./mt7601Usta.ko
ifconfig ra0 up
./wpa_supplicant -Dwext -i ra0 -c wpa_supplicant.conf -d &
sleep 4
udhcpc -i ra0

