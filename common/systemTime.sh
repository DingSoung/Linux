#! /bin/sh
echo "current system time"
date
echo "Setting the time"
ntpdate time.nist.gov
tzselect China
echo "New time"
date 
