sudo rpm -ivh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
sudo rpm -ivh epel-release-7-5.noarch.rpm
sudo yum -y update epel-release
sudo rpm --import http://rpms.famillecollet.com/RPM-GPG-KEY-remi
sudo rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo yum -y update remi-release
sudo yum -y --enablerepo=remi-php70,epel install php-fpm php-gd php-gmp php-mbstring php-mcrypt php-opcache php-pdo php-pear-MDB2-Driver-mysqli php-pecl-memcached php-pecl-msgpack php-xml
sudo rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
sudo yum -y update nginx-release-centos
sudo yum -y --enablerepo=nginx install nginx
sudo systemctl start php-fpm.service
sudo systemctl start nginx.service

sudo systemctl enable nginx.service
sudo systemctl enable php-fpm.service
