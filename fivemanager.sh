#!/bin/bash
#
# Author: Memorphix
# Contact: contact@memorphix.com
# Description: Simple script to manage FiveM server status (start/stop/restart)
#


DATA_PATH="" # Path to the data folder of your FiveM server (cfx-data) - e.g. "/root/fivem/data"
SERVER_PATH="" # Path to the server folder of your FiveM server (cfx-server) - e.g. "/root/fivem/server"

clear
printf "\n\n\033[0;31m----------- FiveM Server Manager | Author: Memorphix -----------\033[0m"
if [[ $(screen -ls | grep fivem | awk '{ print $1}' | cut -d '.' -f2-) == "fivem" ]]; then
 printf "\nIt looks like the server is running, what do you want to do?\n\t1 - Restart\n\t2 - Stop\n\t3 - Nothing\n\nAnswer: "
 read ACTION

 case $ACTION in
  1)
    echo "Restarting the server.."
    screen -X -S fivem quit
    screen -S fivem -dm bash -c 'cd '$DATA_PATH'; bash '$SERVER_PATH'/run.sh +exec server.cfg;'
    echo "The server has started again."
    ;;
  2)
    echo "Stopping the server.."
    screen -X -S "fivem" quit
    ;;
  *)
    echo "You wrote an unknown option, or you chose option 3."
    ;;
  esac

else
 printf "\nLooks like the server is down, do you want to start it?\n\t1 - Yes\n\t2 - No\n\nAnswer: "
 read ANSWER

 case $ANSWER in
 1)
   screen -S fivem -dm bash -c 'cd '$DATA_PATH'; bash '$SERVER_PATH'/run.sh +exec server.cfg;'
   echo "The server has started."
   ;;
 *)
   echo "You chose not to start the server, exiting."
   ;;
 esac

fi