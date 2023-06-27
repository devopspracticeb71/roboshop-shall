echo -e "\e[31mcopy mango repo file\e[0m"
cd /etc/yum.repos.d/mongo.repo
echo -e "\e[31mInstall mangoDB server\e[0m"
yum install mongodb-org -y 
## Modify the config file
echo -e "\e[31mStart MangoDB Services\e[0m"
systemctl enable mongod 
systemctl restart mongodb 