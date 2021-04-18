
#Are you hearing about it for the first time? apt-get is the command you probably learnt how to use Ubuntu with.
#If you would like your downloads to enjoy a better speed then install apt-fast and use it in the place of apt-get.
sudo add-apt-repository ppa:apt-fast/stable -y
sudo apt-get install apt-fast -y

sudo apt-fast update && sudo apt-fast upgrade -y

sudo apt-fast install git terminator openjdk-11-jdk curl htop lm-sensors -y

sudo apt-fast install docker.io -y
sudo systemctl enable --now docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

sudo groupadd docker
sudo usermod -aG docker $USER
	

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
#sudo chown tc /usr/local/bin/docker-compose

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node

npm install -g generator-jhipster
npm install -g yo
