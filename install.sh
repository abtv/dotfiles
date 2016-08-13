echo 'Updating packages...'
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y
echo 'Packages were updated\n\n\n'

echo 'Installing packages...'
sudo apt-get install -y language-pack-ru
sudo apt-get install -y htop
sudo apt-get install -y zip
sudo apt-get install -y unzip
sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt-get install -y build-essential
echo 'Packages were installed\n\n\n'

echo 'Installing Java...'
echo debconf shared/accepted-oracle-license-v1-1 select true | \
  sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer
echo 'Java was installed\n\n\n'

echo 'Installing Postgres...'
sudo apt-get install -y postgresql
su - postgres -c "psql -U postgres -d postgres -c \"alter user postgres with password 'postgres';\""
echo 'Postgres was installed\n\n\n'

echo 'Installing Leiningen'
mkdir bin
cd bin
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo chmod u+x lein
cd ~
echo 'Leiningen was installed\n\n\n'

echo 'Installing Nodejs...'
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g tern
sudo npm install -g js-beautify
sudo npm install -g jshint
echo 'Nodejs was installed\n\n\n'

echo 'Installing Emacs...'
sudo apt-get install -y emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://github.com/abtv/dotfiles.git
cp dotfiles/.spacemacs ~/
rm -rf ./dotfiles
echo 'export TERM=xterm-256color' >> ~/.zshrc
echo 'alias emacs="emacs -nw"' >> ~/.zshrc
echo 'Emacs was installed\n\n\n'

echo 'Installing ElasticSearch...'
wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.3.5/elasticsearch-2.3.5.deb
sudo dpkg -i elasticsearch-2.3.5.deb
rm elasticsearch-2.3.5.deb
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service
sudo /bin/systemctl start elasticsearch.service
echo 'ElasticSearch was installed\n\n\n'

echo 'Installing Redis'
wget http://download.redis.io/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable
make
sudo make install
cd ..
echo 'Redis was installed\n\n\n'

echo 'Configuring UFW...'
sudo ufw default deny incoming
sudo ufw default allow outcoming
sudo ufw allow ssh
sudo ufw enable -y
echo 'UFW was configured\n\n\n'

echo 'Installing Oh my zsh'
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" -y
echo 'Oh my zsh was installed\n\n\n'

echo 'Setup is done!'
