mkdir setup-temp
cd setup-temp

# Add all PPA dependencies
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:numix/ppa
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

# Sun JDK setup
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install -y oracle-java8-set-default

# App setup
sudo apt-get install -y synaptic zsh git curl sublime-text-installer xclip google-chrome-stable numix-gtk-theme

# Install oh-my-zsh, set ZSH as default shell, set theme to solarized
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp ~/.zshrc ~/.zshrc
rm ~/.zshrc

curl -fsSL https://raw.githubusercontent.com/marczinusd/dev-setup/master/.zshrc > ~/.zshrc

chsh -s /bin/zsh

curl -fsSL https://github.com/powerline/fonts/raw/master/Inconsolata-g/Inconsolata-g%20for%20Powerline.otf > inconsolata.otf
sudo cp inconsolata.otf /usr/share/fonts

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



