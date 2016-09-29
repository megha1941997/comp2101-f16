
#!/bin/bash
#"This script prints out a welcome message using variables and command subtitution
export MYNAME="Megha Patel"
mytitle="Supreme Commander"

echo $mytitle $MYNAME
planet=`hostname`
weekday=$(date +%A)
echo "Welcome to planet $planet, $mytitle $MYNAME!"
echo "Today is $weekday"

