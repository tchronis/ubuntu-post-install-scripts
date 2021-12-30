apt-get install software-properties-common -y

#Are you hearing about it for the first time? apt-get is the command you probably learnt how to use Ubuntu with.
#If you would like your downloads to enjoy a better speed then install apt-fast and use it in the place of apt-get.
sudo add-apt-repository ppa:apt-fast/stable -y
sudo apt-get install apt-fast -y

sudo apt-fast update && sudo apt-fast upgrade -y

sudo apt-fast install git terminator zim openjdk-11-jdk cmake curl htop lm-sensors iproute2 inetutils-ping r-base-core gdebi-core groovy xclip sysbench python3-pip python-dev -y
sudo ln -s java-1.11.0-openjdk-amd64/ default-java

sudo apt install nvidia-cuda-toolkit -y
sudo apt install nvidia-settings -y
sudo apt install --reinstall nvidia-driver-470 -y
sudo prime-select nvidia

#https://askubuntu.com/questions/353502/is-it-possible-to-boot-without-adding-pci-nomsi-or-acpi-off-to-the-grub-comm
#Follow these steps precisely

#Start your system as your traditional way :) Then open terminal(Ctrl+Alt+T) and execute these commands:

#sudo cp /etc/default/grub /etc/default/grub.bak
#sudo gedit /etc/default/grub
#once grub is opened in gedit replace

#GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
#by

#GRUB_CMDLINE_LINUX_DEFAULT="quiet splash pci=realloc"
#Save and close gedit window.

#Update grub and restart your system:

#sudo update-grub
#sudo reboot
#Your system should starts normally. Reply if something goes wrong..


#Disable UEFI secure boot in BIOS
nvidia-smi
nvidia-settings

sudo ubuntu-drivers autoinstall
#https://pytorch.org/get-started/locally/
pip3 install torch==1.10.1+cu113 torchvision==0.11.2+cu113 torchaudio==0.10.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html

git config --global user.name "Theodore Chronis"
git config --global user.email "t.n.chronis@gmail.com"

sudo apt-fast install docker.io -y
sudo systemctl enable --now docker
#sudo systemctl enable docker.service
#sudo systemctl enable containerd.service

sudo groupadd docker
sudo usermod -aG docker $USER

#update to most current
sudo rm -f /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node #Run this again to update node and npm
nvm install --lts #Install the latest LTS release of Node.js

npm install -g generator-jhipster
npm install -g yo

sudo apt-fast install rustc -y

#https://www.microsoft.com/en-us/microsoft-teams/download-app#allDevicesSection

#Watch for file changes in a large workspace (needed for VSCode to remote handle many files)
#install on host (remote)
#sudo cat /proc/sys/fs/inotify/max_user_watches
#sudo echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
#sudo sysctl -p

#R and RStudio
#https://linuxize.com/post/how-to-install-r-on-ubuntu-20-04/
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'

sudo apt install r-base

