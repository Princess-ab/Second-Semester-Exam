# Step 1: Create Master and Slave with vagrant

I created master and slave VM using the Vagrant File
![Vagrant Up Master](screenshots/1_vagrantup1.png)
![Vagrant Up Slave](screenshots/1_vagrantup2.png)

# Step 2: SSH into Master

I used the command "vagrant ssh master"
![Vagrant ssh](screenshots/3_vagrantsshmaster.png)

# Step 3: Get IP address
I used the command "ip addr"
![IP Address](screenshots/3b_ipaddr.png)

# Step 4: Verivy Bash Script for Provisioning works

I used the command "sudo systemctl status apache2" and "sudo systemctl status mysql" 
![System Status](screenshots/4_apache2andmysql.png)

# Step 5: Deploy PHP App
First, i ran the command "lynx http://localhost/index.php" or "lynx http://192.168.56.38/index.php"
![lynx](screenshots/5_laravel1.png)
![loading](screenshots/6_laravel2.png)
![Laravel](screenshots/7_laravel3.png)
![here we are](screenshots/8_laravelon.png)


