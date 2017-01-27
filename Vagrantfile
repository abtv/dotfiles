Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get install htop
    curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
    apt-get install -y nodejs
    wget https://raw.githubusercontent.com/abtv/dotfiles/master/.vimrc
    apt-get install git
    apt install -y emacs24
    git clone https://github.com/syl20bnr/spacemacs /home/ubuntu/.emacs.d
    chown -R ubuntu:ubuntu /home/ubuntu/.emacs.d
    rm /home/ubuntu/.spacemacs
    wget https://raw.githubusercontent.com/abtv/dotfiles/master/.spacemacs
    chown -R ubuntu:ubuntu /home/ubuntu/.spacemacs
    #install docker
  SHELL
end
