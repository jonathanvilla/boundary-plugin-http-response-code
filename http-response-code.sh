#!/bin/bash
#
# Author: Jonathan Villa <jonthan@1030tech.com>
# Description: Makes a simple HTTP request to a provided URL using curl. This is beneficial when monitoring for 500/404/403/etc responses.
URL=`grep url ./param.json | awk '{ print $2 }' | sed 's/"//g' | sed 's/,//g'`

while true; do
	if [ "$URL" == "" ]; then
		echo "URL not provided";
		exit 1
	else
		HTTP_RESPONSE_CODE=`curl -s -w "%{http_code}\n" -o ./http_code.txt $URL`
		echo "HTTP_RESPONSE_CODE $HTTP_RESPONSE_CODE"
		#sleep 1
	fi
done
