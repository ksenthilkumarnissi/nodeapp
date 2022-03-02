echo "-----------------Date-----------------"
date
sleep 5

echo "-----------------Node Version-----------------"
node -v
sleep 5

echo "-----------------List Files-----------------"
ls -lrt
sleep 5

echo "-----------------pwd-----------------"
pwd
sleep 5

echo "-----------------Ifconfig-----------------"
ifconfig
sleep 5

echo "-----------------Netstat-----------------"
netstat -at -np
sleep 5

echo "-----------------Docker-----------------"
docker ps
sleep 5

echo "-----------------systemctl-----------------"
systemctl status docker
sleep 5

echo "-----------------Curl-----------------"
curl -i http://127.0.0.1:4000/
sleep 5

echo "-----------------Cat Status-----------------"
cat /usr/src/nodeapp.txt
sleep 5

echo "-----------------uptime-----------------"
uptime
sleep 5

return 0