STATUS=$(curl -Is -o /dev/null -w '%{http_code}' 10.10.101.114/on1 --connect-timeout 5 --max-time 5)
  if [ $STATUS -eq 200 ]; then
       echo  "`date '+%d'`""&emsp;""`date '+%H:%M:%S'` ОК <br>" >> /var/www/html/ZVONOK/localhost/history.txt
    break
  else
       echo  "`date '+%d'`""&emsp;""`date '+%H:%M:%S'` БЕДА <br>" >> /var/www/html/ZVONOK/localhost/history.txt
  fi



