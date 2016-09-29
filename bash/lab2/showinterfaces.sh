#!/bin/bash

#Create an array using the output of ifconfig 
#which has the names of the network interfaces in it.
#Use those names to extract the ip addresses of the interfaces, 
#also using ifconfig output. Also parse the output of 
#route -n to display the ip address of the default GATEWAY.

interfacesnames=(`ifconfig | grep `^[a-zA-Z]` | amk '{print $1}'`)


ips=(`ifconfig ${interfacesnames[0]} | grep 'inet addr' | sed -e 's/ *inet addr://'|sed -e 's/ .*//'`)
ips[1]=`ifconfig ${interfacesnames[1]} | grep 'inet addr' | sed -e 's/ *inet addr://'|sed -e 's/ .*//'`

cat <<EOF

Interfaces ${interfacesnames[0]} has address ${ips[0]}
Interfaces ${interfacesnames[1]} has address ${ips[1]}

My default gateway is $gatewayip
EOF
