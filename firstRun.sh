mkdir /etc/Wireless/RT2870STA/ -p
cp RT2870STA.dat /etc/Wireless/RT2870STA/
mkdir /usr/share/udhcpc/ -p
mkdir /etc/udhcpc/ -p
ln -s /hicat/scp /bin/scp 

mkdir /var/lib/misc/ -p
touch /var/lib/misc/udhcpd.leases
ifconfig ra0 192.168.1.1
udhcpd ./udhcpd.conf &
