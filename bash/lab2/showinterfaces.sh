#!/bin/bash

#Create an array using the output of ifconfig 
#which has the names of the network interfaces in it.
#Use those names to extract the ip addresses of the interfaces, 
#also using ifconfig output. Also parse the output of 
#route -n to display the ip address of the default GATEWAY.

interfacesnames=(`ifconfig |grep '^[a-zA-Z]' |awk '{print $1}'`)

declare -a ips
ips[0]=`ifconfig ${interfacesnames[0]} | grep 'inet addr' | sed -e 's/ *inet addr://'|sed -e 's/ .*//'`
ips[1]=`ifconfig ${interfacesnames[1]} | grep 'inet addr' | sed -e 's/ *inet addr://'|sed -e 's/ .*//'`
ips=($ips[0] $ips[1])
gatewayip=`route -n |grep '^0.0.0.0'|awk '{print $2}'`

cat <<EOF

Interfaces ${interfacesnames[0]} has address ${ips[0]}
Interfaces ${interfacesnames[1]} has address ${ips[1]}

My default gateway is $gatewayip
EOF
