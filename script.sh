#!/bin/bash

str1="curl 'https://172.16.1.1:8090/login.xml' -H 'Origin: https://172.16.1.1:8090' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.140 Chrome/64.0.3282.140 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: */*' -H 'Referer: https://172.16.1.1:8090/' -H 'Connection: keep-alive' --data 'mode=191&username="USERNAME"&password="PASSWORD"&a=1520951387311&producttype=0' --compressed --insecure"
#type username and password ignoring quotes.
str2="curl 'https://172.16.1.1:8090/logout.xml' -H 'Origin: https://172.16.1.1:8090' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/64.0.3282.140 Chrome/64.0.3282.140 Safari/537.36' -H 'Content-Type: application/x-www-form-urlencoded' -H 'Accept: */*' -H 'Referer: https://172.16.1.1:8090/' -H 'Connection: keep-alive' --data 'mode=193&username=be1016515&a=1521002980447&producttype=0' --compressed --insecure"


if [ "$1" = "login" ]
then
      eval $str1
elif [ "$1" = "logout" ]
then
      eval $str2
else
      echo "please enter either login or logout"
fi
