#!/bin/bash
#
# Author: Jonathan Villa <jonthan@1030tech.com>
# Description: Makes a simple HTTP request to a provided URL using curl. This is beneficial when monitoring for 500/404/403/etc responses.
RESPONSE=
URL=$1

if [ "$URL" == "" ]; then
	echo "URL not provided";
	exit 1
else
	HTTP_RESPONSE_STATUS=`curl -s -w "%{http_code}\n" -o /tmp/http_status.txt $URL`
	echo "HTTP_RESPONSE_STATUS $HTTP_RESPONSE_STATUS"
fi
