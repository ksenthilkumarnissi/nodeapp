echo "-----------------Date-----------------"
date
sleep 20

echo "-----------------Node Version-----------------"
node -v
sleep 20

echo "-----------------List Files-----------------"
ls -lrt
sleep 20

echo "-----------------pwd-----------------"
pwd
sleep 20

echo "-----------------Ifconfig-----------------"
ifconfig
sleep 20

echo "-----------------Netstat-----------------"
netstat -at -np
sleep 20

echo "-----------------Docker-----------------"
docker ps
sleep 20

echo "-----------------systemctl-----------------"
systemctl status docker
sleep 20

echo "-----------------Curl-----------------"
curl -i http://127.0.0.1:4000/
sleep 20
return 0