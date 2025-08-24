#!/bin/bash

#URL of the API
URL="http://localhost:5000/books"

#check API health every 10 seconds (you can adjust)
while true
do
	#Send a GET reuest
	RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

	#Check HTTP statu code
	if [ $RESPONSE -eq 200 ]; then
		echo "$(date) - API is UP"
	else
		echo "$(date) - ALERT! API is DOWN (Status: $RESPONSE)"
	fi

	sleep 10
done
