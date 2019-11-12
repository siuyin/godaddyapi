#!/bin/sh

TYPE=A
NAME=rasp
IP=$1
if [ -z $IP ]; then
	echo "Usage upadateRasp.sh <ip_address>"
	exit 2
fi
CMD=v1/domains/${DOMAIN}/records/${TYPE}/${NAME}
echo $CMD -d "[ { \"data\": \"${IP}\" } ]"
curl -X PUT -H "Authorization: sso-key ${API_KEY}:${API_SECRET}" \
	-H "Content-Type: application/json" \
	-d "[ { \"data\": \"${IP}\" } ]" \
	${URL}/${CMD}
