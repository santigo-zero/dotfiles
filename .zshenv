# XDG Paths
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_RUNTIME_DIR=/run/user/$UID
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# Change the xdg user directories
xdg-user-dirs-update --set DESKTOP "$HOME"/.local/Desktop
xdg-user-dirs-update --set DOWNLOAD "$HOME"/.local/Downloads
xdg-user-dirs-update --set TEMPLATES "$HOME"/.local/Templates
xdg-user-dirs-update --set PUBLICSHARE "$HOME"/.local/Public
xdg-user-dirs-update --set DOCUMENTS "$HOME"/.local/Documents
xdg-user-dirs-update --set MUSIC "$HOME"/.local/Music
xdg-user-dirs-update --set PICTURES "$HOME"/.local/Pictures
xdg-user-dirs-update --set VIDEOS "$HOME"/.local/Videos

export ZDOTDIR=$HOME/.config/zsh # Zsh config
export LIBVA_DRIVER_NAME=iHD # Hardware acceleration
export KDEHOME=${XDG_CONFIG_HOME}/kde # KDE
export MOZ_ENABLE_WAYLAND=1 # Wayland in Firefox
export MOZ_USE_XINPUT2=1 # Pixel-perfect trackpad scrolling
export LANG=en_US.UTF-8
export LC_COLLATE=C
export VISUAL="nvim"
export EDITOR="nvim"
export BROWSER="brave" # firefox
export TERMINAL="konsole" # wezterm kitty
export TERM="xterm-256color" # xterm-kitty
export LESSHISTFILE="-"
export KEYTIMEOUT=1
export ZETTELPY_DIR="${HOME}/.zettels"
export CDPATH="${HOME}/workspace" # Add directories to CDPATH
export PATH=/home/$USER/.local/bin:$PATH # Binaries
export RUSTUP_HOME=${XDG_DATA_HOME}/rustup # Rustup
export CARGO_HOME=${XDG_DATA_HOME:-$HOME/.local/share}/cargo # Cargo install dir
export PATH=$PATH:${XDG_DATA_HOME}/cargo/bin # Add cargo binaries to PATH
export PATH=$HOME/.cabal/bin:$PATH # Cabal
export GHCUP_INSTALL_BASE_PREFIX=${XDG_DATA_HOME}/ghcup # Ghcup install dir
export GHCUP_USE_XDG_DIRS="I hope haskell is worth it" # ghcup
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden' # fzf
export NVM_DIR=${XDG_DATA_HOME}/nvm # NVM
export NPM_CONFIG_USERCONFIG=${XDG_CONFIG_HOME}/npm/npmrc # NPM
export SDKMAN_DIR=${HOME}/.local/lib/sdkman # SDKMAN
export NVIMREMOTE="/tmp/nvim.pipe"
export GTK2_RC_FILES=${XDG_CONFIG_HOME}/gtk-2.0/gtkrc # This isn't going to work because KDE Plasma hardcodes the value
export NPM_CONFIG_USERCONFIG=${XDG_CONFIG_HOME}/npm/npmrc;

# Manpagers
if which bat >/dev/null; then
    export MANPAGER="bash -c 'col -b | bat -l man -p'"
else
    export MANPAGER="nvim -c 'set ft=man' -"
fi
export MANWIDTH=999
