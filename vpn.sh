#!/bin/bash
echo "
------------------------------------------------------------------------------------------------------
             _____ 
 _ _ ___ ___|     |
| | | . |   |   --|
 \_/|  _|_|_|_____|
    |_|            
"
vpnFolder="/home/kali/vpn/"
defaultVPN=5
declare -a vpnList=(`ls $vpnFolder | grep -E '\.ovpn$' | sed 's/.ovpn//g'`)

for i in "${!vpnList[@]}"
do
	echo "$i ) ${vpnList[$i]}"
done
echo "------------------------------------------------------------------------------------------------------"

while true; do
    read -p "ESelect VPN (default:$defaultVPN):" num
    if [[ -z $num ]]; then
        num=$defaultVPN
        break
    elif ! [[ $num =~ ^[0-${#vpnList[@]}]+$ ]]; then
        echo "Error: $num is not a number"
    elif (( num >= 0 && num <= 10 )); then
        break
    else
        echo "Error: $num is not between 0 and ${#vpnList[@]}"
    fi
done

sudo killall openvpn   

echo "Connecting to ${vpnList[$num]}.ovpn"
echo "starting $c"
sudo openvpn "$vpnFolder${vpnList[$num]}.ovpn"

echo killing OPEN VPN
sudo killall openvpn 
echo  > /tmp/ip.txt
