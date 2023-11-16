#!/bin/bash
echo "ISP Monitoring "
HOST_COB="x.x.x.x"  #put public IP your Internet provider
if ping $HOST_COB -c 1 1>/dev/null 2>/dev/null  #try 1 ping
then
echo "ok, isp is responding"
curl -fsS -m 3 -o /dev/null --data-raw "ISP is working" https://hc-ping.com/aaa-bbb-ccc #not commom option, IT admin often wants to get notified when outage is occuring
else
echo "not ok,isp is not working"
curl -fsS -m 3 -o /dev/null --data-raw "ISP is not working" https://hc-ping.com/aaa-bbb-ccc/fail
fi
