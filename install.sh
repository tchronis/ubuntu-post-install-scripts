
#Are you hearing about it for the first time? apt-get is the command you probably learnt how to use Ubuntu with. In fact, all the commands in this article use apt-get.
#If you would like your downloads to enjoy a better speed then install apt-fast and use it in the place of apt-get.
sudo add-apt-repository ppa:apt-fast/stable -y

sudo apt-get update && sudo apt-get upgrade -y

sudo apt-get install apt-fast

sudo apt-fast install git openjdk-11-jdk curl htop lm-sensors nodejs npm -y

sudo npm install -g generator-jhipster
