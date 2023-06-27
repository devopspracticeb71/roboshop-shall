echo -e "\e[31mcopy mango repo file\e[0m"
cp mongodb.repo /etc/yum.repos.d/mongodb.repo
echo -e "\e[31mInstall mangoDB server\e[0m"
yum install mongodb-org -y 
## Modify the config file
echo -e "\e[31mStart MangoDB Services\e[0m"
systemctl enable mongod 
systemctl restart mongodb 