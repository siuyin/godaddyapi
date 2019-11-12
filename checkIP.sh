#!/bin/bash

OLD_IP=$(cat ip.txt)
echo ${OLD_IP}

NEW_IP=$(curl -s ifconfig.co)
if [ $OLD_IP != $NEW_IP ]; then
	echo updating IP to $NEW_IP from $OLD_IP
	source prod.keys.secret
	./updateRasp.sh $NEW_IP
	echo $NEW_IP > ip.txt
fi
