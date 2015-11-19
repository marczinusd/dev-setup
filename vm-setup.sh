mkdir setup-temp
cd setup-temp

# Add all PPA dependencies
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:numix/ppa
sudo apt-add-repository -y ppa:zeal-developers/ppa
sudo add-apt-repository -y ppa:fkrull/deadsnakes

#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Sun JDK setup
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install -y oracle-java8-set-default

# App setup
sudo apt-get install -y synaptic zsh git curl sublime-text-installer xclip google-chrome-stable numix-gtk-theme vlc zeal python3.5

# Set sublime text as default editor
cp /usr/share/applications/defaults.list ~/.defaults.list.bak
sed -i 's/gedit/subl/' /usr/share/applications/defaults.list

# Install oh-my-zsh, set ZSH as default shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

cp ~/.zshrc ~/.zshrc
rm ~/.zshrc
curl -fsSL https://raw.githubusercontent.com/marczinusd/dev-setup/master/.zshrc > ~/.zshrc

curl -fsSL https://github.com/powerline/fonts/raw/master/Inconsolata-g/Inconsolata-g%20for%20Powerline.otf > inconsolata.otf #set this manually later
sudo cp inconsolata.otf /usr/share/fonts

# solarized
wget --no-check-certificate https://raw.github.com/seebi/dircolors-solarized/master/dircolors.ansi-dark
mv dircolors.ansi-dark .dircolors
eval `dircolors ~/.dircolors`
git clone https://github.com/sigurdga/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized
./set_dark.sh
cd ~/setup-temp

# Git setup
git config --global user.name "David Marczinus"
git config --global user.email david.marczinus@gmail.com
git config --global core.editor subl

# Node setup
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | zsh
source ~/.zshrc
nvm install 5.1.0
nvm alias default 5.1.0

# ATTENDED FROM HERE
# Set up SSH key for GitHub (attended)
ssh-keygen -t rsa -b 4096 -C "marczinus.david@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
sensible-browser https://github.com/settings/ssh

#install intellij
cd ~
wget -O /tmp/intellij.tar.gz http://download.jetbrains.com/idea/ideaIU-15.0.1.tar.gz && tar xfz /tmp/intellij.tar.gz && cd idea*/bin && ./idea.sh

#update OS
sudo apt-get update && sudo apt-get -y upgrade 

# set p4merge as git diff tool
# http://blogs.pdmlab.com/alexander.zeitler/articles/installing-and-configuring-p4merge-for-git-on-ubuntu/
