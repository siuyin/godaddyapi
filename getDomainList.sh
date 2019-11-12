#!/bin/sh
CMD=v1/domains
curl -X GET -H "Authorization: sso-key ${API_KEY}:${API_SECRET}" \
	${URL}/${CMD}
