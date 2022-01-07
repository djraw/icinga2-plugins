#!/bin/bash
echo "f2b-$1 OK" $(fail2ban-client status $1 | grep "Currently banned" | tr \| - )

exit 0
