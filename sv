#!/bin/bash

echo "              ___.     
__  _  __ ____\_ |__   
\ \/ \/ // __ \| __ \  
 \     /\  ___/| \_\ \ 
  \/\_/  \___  >___  / 
             \/    \/  
                       
       _________  __   
      /  ___/\  \/ /   
      \___ \  \   /    
     /____  >  \_/     
          \/           "

lurl=$(echo `ifconfig eth0 2>/dev/null|awk '/inet / {print $2}'`)
turl=$(echo `ifconfig tun0 2>/dev/null|awk '/inet / {print $2}'`)

if [ $1 ]
then
     echo "----------------"
     echo "http://${lurl}:$1"
     if [ $turl ]; then 
          echo "http://${turl}:$1"
     fi
     echo "----------------"

	python3 -m http.server $1
else
	python3 -m http.server 80 
fi