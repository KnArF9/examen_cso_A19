sudo nano /etc/systemd/timesyncd.conf
sudo systemctl restart ntpd
sudo systemctl restart ntp
sudo service ntp stop
sudo service ntp start
sudo apt install ntpdate
sudo timedatectl set-ntp true
timedatectl
sudo apt update
sudo service ntp stop
sudo ntpdate ntp.cegepsherbrooke.qc.ca
date
sudo apt update
logout
