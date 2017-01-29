Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.synced_folder "/Users/andrew/sandbox", "/sandbox"
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install htop
    apt-get install git
    wget https://raw.githubusercontent.com/abtv/dotfiles/master/.vimrc

    #install nodejs
    curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
    apt-get install -y nodejs

    #install docker
    sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
    sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
    sudo apt-get update
    apt-cache policy docker-engine
    sudo apt-get install -y docker-engine
    sudo usermod -aG docker ubuntu

    #install spacemacs
    apt install -y emacs24
    git clone https://github.com/syl20bnr/spacemacs /home/ubuntu/.emacs.d
    chown -R ubuntu:ubuntu /home/ubuntu/.emacs.d
    rm /home/ubuntu/.spacemacs
    wget https://raw.githubusercontent.com/abtv/dotfiles/master/.spacemacs
    chown -R ubuntu:ubuntu /home/ubuntu/.spacemacs
  SHELL
end
