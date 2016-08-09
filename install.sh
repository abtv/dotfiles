sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y
sudo apt-get install -y language-pack-ru
sudo apt-get install -y htop
sudo apt-get install -y zip
sudo apt-get install -y unzip
sudo apt-get install -y curl
echo debconf shared/accepted-oracle-license-v1-1 select true | \
  sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer
sudo apt-get install -y postgresql
su - postgres -c "psql -U postgres -d postgres -c \"alter user postgres with password 'postgres';\""
sudo apt-get install -y git
mkdir bin
cd bin
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo chmod u+x lein
cd ~
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/abtv/dotfiles.git
cp dotfiles/.spacemacs ~/
rm -rf ./dotfiles
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y
sudo ufw default deny incoming

sudo ufw default allow outcoming
sudo ufw allow ssh
sudo ufw enable -y
echo 'export TERM=xterm-256color' >> ~/.zshrc
