echo 'deb http://download.owncloud.org/download/repositories/production/Ubuntu_16.04/ /' > /etc/apt/sources.list.d/owncloud.list
apt-get update
apt-get install owncloud-files
