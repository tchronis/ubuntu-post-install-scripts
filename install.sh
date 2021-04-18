sudo apt-get install git -y

#Are you hearing about it for the first time? apt-get is the command you probably learnt how to use Ubuntu with.
#If you would like your downloads to enjoy a better speed then install apt-fast and use it in the place of apt-get.
sudo add-apt-repository ppa:apt-fast/stable -y
sudo apt-get install apt-fast -y

sudo apt-fast update && sudo apt-fast upgrade -y

sudo apt-fast install terminator openjdk-11-jdk curl htop lm-sensors nodejs npm -y

sudo apt-fast install docker.io -y
sudo systemctl enable --now docker
sudo apt-fast  install docker-compose -y

sudo npm install -g generator-jhipster
sudo npm install -g yo
