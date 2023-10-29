#!/bin/bash

# Update package list and upgrade packages
sudo apt update
sudo apt upgrade -y

# Install Apache, MySQL, PHP, and Git
# echo "SETTING UP APACHE SERVER"
sudo apt install -y apache2 mysql-server php libapache2-mod-php curl unzip git composer sed openssl php-mysql php-mbstring php-gd  php-xml  php-curl php-mysqli php-intl php-bz2 

# Enable and start Apache and MySQL services
sudo systemctl enable apache2
sudo systemctl start apache2
sudo systemctl enable mysql
sudo systemctl start mysql

# Update the package repository
echo "******TEST 0******"
sudo apt-get update -y
sudo systemctl status mysql
echo "******SECURING MYSQL******"
# sudo mysql_secure_installation
echo "******TEST 1******"

# Clone the PHP Laravel application from GitHub
# echo "CLONING LARAVEL APP FROM GIT REPO"
sudo git clone https://github.com/laravel/laravel.git /var/www/myapp
echo "******TEST 2******"

# Configure Apache to point to the Laravel application
# echo "FIXING LARAVEL PERMISSIONS"
# sudo mv /var/www/html/myapp/public /var/www/html/
sudo chown -R www-data:www-data /var/www/myapp/storage

# echo "SETTING APP ROOT DIRECTORY"
sudo sed -i "s,/var/www/html,/var/www/myapp/public,g" /etc/apache2/sites-enabled/000-default.conf 

# Restart Apache
sudo systemctl restart apache2

cd /var/www
sudo chown -R www-data:www-data myapp
sudo chmod -R 775 myapp/storage

# echo "INSTALLING COMPOSER PACKAGES FOR APP"
cd /var/www/myapp 
sudo cp .env.example .env
composer install



sudo php artisan key:generate

echo "INSTALLATION SUCCESSFUL"
echo "RUN COMMAND 'lynx http://localhost' TO RUN APPLICATION"

sudo apt install -y lynx 

sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

# su -i
# mkdir /etc/ansible/playbooks
# cd /etc/ansible/playbooks
# vim appdeploy.yml

