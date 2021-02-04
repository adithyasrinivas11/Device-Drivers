#!/bin/sh

FILE=/root/Desktop/Device-Drivers/lab1/q3_output
WEB=/root/Desktop/Device-Drivers/lab1/website.out
# the url to retrieve
URL=https://www.iiitdm.ac.in/

# write header information to the log file
start_date=`date`
echo "START-------------------------------------------------" >> $FILE
echo "" >> $FILE

# retrieve the web page using curl.
curl $URL > $WEB


echo "" >> $FILE
end_date=`date`
echo "STARTTIME: $start_date" >> $FILE
echo "END TIME:  $end_date" >> $FILE
echo "" >> $FILE
