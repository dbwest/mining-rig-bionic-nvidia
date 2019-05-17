sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install openssh-server -y
ifconfig | grep netmask
sleep 10
netstat -r -n
sleep 10
IFS=’.’ read -ra IPADDRESS <<< "255.255.255.0" && IPADDRESSZERO=`(echo "obase=2;${IPADDRESS[0]}" | bc)` && IPADDRESSONE=`(echo "obase=2;${IPADDRESS[1]}" | bc)` && IPADDRESSTWO=`(echo "obase=2;${IPADDRESS[2]}" | bc)` && IPADDRESSTHREE=`(echo "obase=2;${IPADDRESS[3]}" | bc)` && echo -n $IPADDRESSZERO$IPADDRESSONE$IPADDRESSTWO$IPADDRESSTHREE | awk -F'1' 'NF{print NF-1}'
sleep 10
sudo apt-get install -y linux-headers-$(uname -r)
sudo apt-get install xorg-dev -y
sudo reboot now
