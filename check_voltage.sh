#!/bin/bash

# /opt/vc/bin/vcgencmd get_throttled
# If the answer is:
#
# throttled=0x0
# You're good with the supplied voltage and SoC temperature.
#
# The bits on the returned number mean:
#
# Bit Hex value   Meaning
# 0          1    Under-voltage detected
# 1          2    Arm frequency capped
# 2          4    Currently throttled
# 3          8    Soft temperature limit active
# 16     10000    Under-voltage has occurred
# 17     20000    Arm frequency capping has occurred
# 18     40000    Throttling has occurred
# 19     80000    Soft temperature limit has occurred
# A value of 0x50000 means 16 & 18 -- from the boot moment up to now Under-Voltage has ocurred at some point as well as Throrrling has occured.

throttle=$(/opt/vc/bin/vcgencmd get_throttled)

if [ "$throttle" == "throttled=0x0" ]; then
     echo "OK - no under-volteage/throttling: $throttle"
     exit 0
else
     echo "WARNING - under-voltage/throttling occured: $throttle"
     exit 1
fi

exit 0
