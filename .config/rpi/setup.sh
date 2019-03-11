# Install onedrive client
wget -O /usr/local/bin/onedrive -nv https://github.com/sabrehagen/onedrive/raw/master/onedrive.rpi && \
  chmod +x /usr/local/bin/onedrive

# Clone dotfiles configuration
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-git.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-musikcube.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-scripts.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-ssh.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-tmux.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-tmuxinator.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-xdg.git
vcsh clone https://sabrehagen@github.com/sabrehagen/dotfiles-zsh.git
