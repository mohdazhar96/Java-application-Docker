!/bin/sh

############################################
#          DOCKER Installation CentOS      #
############################################
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io
rpm -qa |grep docker
systemctl start docker
systemctl enable docker
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
docker --version
sudo usermod -aG docker $USER
sudo curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "alias dc=docker-compose" >> ~/.bashrc
docker version
docker-compose --version                             
