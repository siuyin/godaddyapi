#!/bin/sh
# example calls:
#  TYPE=A NAME=@ ./getDomainDNSRec.sh
#  TYPE=A NAME=subdomain ./getDomainDNSRec.sh
CMD=v1/domains/${DOMAIN}/records/${TYPE}/${NAME}
curl -X GET -H "Authorization: sso-key ${API_KEY}:${API_SECRET}" \
	${URL}/${CMD}
