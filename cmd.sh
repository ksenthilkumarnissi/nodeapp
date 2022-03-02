echo "\n-----------------Date-----------------"
date
sleep 2

echo "\n-----------------Node Version-----------------"
node -v
sleep 2

echo "\n-----------------List Files-----------------"
ls -lrt
sleep 2

echo "\n-----------------pwd-----------------"
pwd
sleep 2

echo "\n-----------------Ifconfig-----------------"
ifconfig
sleep 2

echo "\n-----------------Netstat-----------------"
netstat -at -np
sleep 2

echo "\n-----------------Docker-----------------"
docker ps
sleep 2

echo "\n-----------------systemctl-----------------"
systemctl status docker
sleep 2

echo "\n-----------------Curl-----------------"
curl -i http://127.0.0.1:4000/
sleep 2

echo "\n-----------------Cat Status-----------------"
cat /usr/src/nodeapp.txt
sleep 2

echo "\n-----------------uptime-----------------"
uptime
sleep 2

return 0