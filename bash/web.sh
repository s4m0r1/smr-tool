#!/bin/bash
for NUMBER in `seq -f %03g 3 100`
                                                                                                                                                                           
do
#ssh login
sshpass -p "x56recz2" ssh -o "StrictHostKeyChecking no" team07-c"${NUMBER}"
sleep 5s
sudo bash
apt update;apt install -y nginx
cd /var/www/html/
touch hostname.json
echo "{"hostname":"team07-c"${NUMBER}""}" > "${NUMBER}".txt
exit
logout
sleep 5s
echo "####################################################"
echo "###################"${NUMBER}"######################"
echo "####################################################"
done
