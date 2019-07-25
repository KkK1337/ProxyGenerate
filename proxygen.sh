#!/bin/bash

#LOOP
for i in {1..50000}
do

#WEBSITE LINK
website=https://www.whatismyip.com/

#PROXY SETTINGS 80 , 8080 , 3128
Proxy80=$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256)):3128
#PROXY SETTINGS 80 , 8080 , 3128

#CURL TO WEBSITE
curl --max-time 10 --connect-timeout 10 --proxy $Proxy80 $website

#TEST TEXT
echo Testing $Proxy80 on $website

#SAVE PROXY
echo $Proxy80>>proxylist.txt
done
