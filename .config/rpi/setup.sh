# Script is run as root to create the host user
if [ $USER != "root" ]; then
  echo "Host configuration script must be run as root!"
  exit 1
fi

# Install onedrive client
wget -O /usr/local/bin/onedrive -nv https://github.com/sabrehagen/onedrive/raw/master/onedrive.rpi && \
  chmod +x /usr/local/bin/onedrive

# Install musikcube
wget -O musickube.deb -nv https://github.com/clangen/musikcube/releases/download/0.63.0/musikcube_0.63.0_rpi_stretch_armhf.deb && \
  dpkg -i musickube.deb

# Clone dotfiles configuration
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-git.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-musikcube.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-rpi.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-scripts.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-ssh.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-tmux.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-tmuxinator.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-xdg.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-zsh.git
