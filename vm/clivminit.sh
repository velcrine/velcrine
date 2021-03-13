: '
sudo hostnamectl set-hostname envoy
mkdir -p /home/pkv/sys/p
mkdir -p /home/pkv/sys/m
mkdir -p /home/pkv/sys/k
sudo vmhgfs-fuse .host:/p /home/pkv/sys/p -o allow_other -o uid=1000
bash /home/pkv/sys/p/src/vm/clivminit.sh


bash /home/pkv/sys/p/src/vm/guivminit.sh
'

set -xe
sudo ls
sudo apt update; sudo apt install -y open-vm-tools
sudo apt install openssh-server -y
sudo systemctl enable ssh
sudo systemctl start ssh
sudo apt install docker.io -y
sudo  tee -a /etc/fstab <<< '.host:/p    /home/pkv/sys/p    fuse.vmhgfs-fuse    defaults,allow_other,uid=1000     0    0
.host:/m    /home/pkv/sys/m    fuse.vmhgfs-fuse    defaults,allow_other,uid=1000     0    0'
tee -a ~/.bashrc <<< '
. ~/sys/p/src/bash/unit.sh'
ip addr



