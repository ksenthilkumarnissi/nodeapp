echo "-----------------Date-----------------"
date
echo "-----------------Ifconfig-----------------"
ifconfig
echo "-----------------Netstat-----------------"
netstat -at -np
echo "-----------------Docker-----------------"
docker ps
echo "-----------------systemctl-----------------"
systemctl status docker
echo "-----------------Curl-----------------"
curl -i http://127.0.0.1:4000/
return 0