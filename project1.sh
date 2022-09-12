sudo apt update
sudo apt install apache2 -y
sudo apt install mysql-server -y
sudo apt install php libapache2-mod-php php-mysql -y
sudo mkdir /var/www/projectlamp
sudo chown -R $USER:$USER /var/www/projectlamp
cp ./projectlamp.conf /etc/apache2/sites-available/
cp ./index.php /var/www/projectlamp
sudo a2ensite projectlamp
sudo a2dissite 000-default
sudo apache2ctl configtest
sudo systemctl reload apache2
