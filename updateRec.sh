#!/bin/sh

TYPE=A
NAME=$1
IP=$2
if [ -z $IP ]; then
	echo "Usage updateRec.sh <name> <ip_address>"
	echo "  eg. updateRec.sh rasp 1.2.3.4"
	exit 2
fi

CMD=v1/domains/${DOMAIN}/records/${TYPE}/${NAME}

curl -X PUT -H "Authorization: sso-key ${API_KEY}:${API_SECRET}" \
	-H "Content-Type: application/json" \
	-d "[ { \"data\": \"${IP}\" } ]" \
	${URL}/${CMD}
