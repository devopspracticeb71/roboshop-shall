echo -e "\e[31minstalling Ngnix Server\e[0m"
yum install ngnix -y >/tmp/roboshop.log

echo -e "\e[32mRemoving old APP\e[0m"
rm -rf /usr/share/ngnix/html/* >/tmp/roboshop.log

echo -e "\e[34mDownloading frontend content\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip >/tmp/roboshop.log

echo -e "\e[35mExtract frontend content\e[0m"
cd /usr/share/ngnix/html
unzip /tmp/frontend.zip >/tmp/roboshop.log



# we need to copy config files

echo -e "\e[36mStarting Ngnix\e[0m"
systemctl enable ngnix >/tmp/roboshop.log
systemctl restart ngnix >/tmp/roboshop.log





