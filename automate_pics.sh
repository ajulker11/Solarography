#!/bin/bash 

#the script will end at 5pm 


END_HOUR=21 #replace with the actual end time in hours
END_MINUTE=31 #replace with the actual end time in minutes

while true;
do    
      CURRENT_HOUR=$(date +"%H") 
      CURRENT_MIN=$(date +"%M")
      if [  $CURRENT_HOUR -eq $END_HOUR ] && [ $CURRENT_MIN -eq $END_MINUTE ];then
            break
      fi
      #run the python script
      python3 test.py 
      #sleep for 5 seconds
      sleep 5 
done  





