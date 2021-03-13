set -x
sudo useradd -u 1111 $1
sudo usermod -s /bin/bash $1
sudo usermod -aG sudo $1
sudo usermod -d /home/pkv $1
sudo passwd $1
set +x
