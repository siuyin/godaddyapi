#!/bin/sh
curl -X GET -H "Authorization: sso-key ${API_KEY}:${API_SECRET}" "${URL}/v1/domains/available?domain=example.com"
