# Step 1: Create Master and Slave with vagrant

I created master and slave VM using the Vagrant File
![Vagrant Up Master](second-semester-exam/screenshots/1_vagrantup1.png)
![Vagrant Up Slave](screenshots/1_vagrantup2.png)

# Step 2: Set expiry date of 2 weeks

I used the command "sudo chage -E 2023-09-01 altschooluser"
And then verified using "sudo chage -l altschooluser"
![Create newuser](Screenshots/Step2.png)

# Step 3: Change password
This is a default action.

# Step 4: Attach "altschooluser" to the "altschool"group

I used the command "sudo groupadd altschool" to first create the group
Then i used the command "sudo usermod -aG altschool altschooluser" to add the user to the group
![Create newuser](Screenshots/Step4.png)

# Step 5: Allow group to run 'cat'command on '/etc/'
First, i got into the sudoers file with the command "sudo visudo"
![Create newuser](Screenshots/Step5a.png)
Next, i found the user and group specifications added the line %altschool ALL=(ALL) /bin/cat /etc/*
![Create newuser](Screenshots/Step5b.png)
After which i saved and exited
![Create newuser](Screenshots/Step5c.png)

# Step 6: Create another user without home directory
I used the command "sudo useradd -M asu2"
![Create newuser](Screenshots/Step6a.png)
![Create newuser](Screenshots/Step6b.png)
and to verify the two users i used the command "cut -d: -f1 /etc/passwd"
![Create newuser](Screenshots/Step6c.png)


