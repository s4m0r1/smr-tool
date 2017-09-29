wget http://download.owncloud.org/download/repositories/production/CentOS_7/ce:stable.repo -O /etc/yum.repos.d/ce:stable.repo
yum clean expire-cache
yum install owncloud-files
