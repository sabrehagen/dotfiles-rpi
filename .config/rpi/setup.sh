# Install musikcube
wget -O musickube.deb -nv https://github.com/clangen/musikcube/releases/download/0.63.0/musikcube_0.63.0_rpi_stretch_armhf.deb && \
  sudo dpkg -i musickube.deb && \
  sudo apt-get install -qq --fix-broken && \
  rm musickube.deb

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

# Install rpi applications
sudo cp -r ~/.config/rpi/builds/omxplayer /

# Check for updates
sudo rpi-update
