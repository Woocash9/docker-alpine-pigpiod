#!/bin/sh

# echo "Checking who is listening/bound to port 8888 ..."
# netstat -tlep | grep 8888
# if [ "$?" = 0 ]; then
#    echo "Some process is still listening/bound to that port"
#    echo "This process needs to be stopped first !"
#    echo "Sleeping for 20 sec - we hope that this releases the bound TCP port 8888 ..."
#    sleep 20
#    echo "... sleeping finished"
# else
#    echo "...OK, no process is listing/bound to port 8888"
# fi

echo "Starting daemon pigpiod ..."
# for pigpiod options see http://abyz.me.uk/rpi/pigpio/pigpiod.html
#  option -g will run the deamon in the foreground.
#  option -a 1 should assure that we are not using GPU memory.
#     for running on 64bit, don't include the '-a 1' flag https://github.com/zinen/docker-alpine-pigpiod/issues/17
#  sample as rare as possible to decrease CPU usage
pigpiod -g -a 1
echo "... daemon stopped unexpectedly."

# added extra logic for issue: https://github.com/janvda/balena-node-red/issues/1
# echo "netstat -tlep | grep 8888"
# netstat -tlep | grep 8888
# echo "sleeping for 20 sec - we hope that this releases the bound TCP port 8888"
# sleep 20
# echo "end of sleep"
# echo "netstat -tlep | grep 8888"
# netstat -tlep | grep 8888

echo "... start.sh terminated"
