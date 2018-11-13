# Source Antigen package manager
source $HOME/.config/antigen.zsh

# BG_NICE has some issues in WSL, so disable it
unsetopt BG_NICE

# The default dircolors in WSL has a lot of contrast issues
eval `dircolors ~/.dircolors.256dark`
path+=$HOME/.bin
export PATH

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle lukechilds/zsh-nvm
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle rupa/z

antigen theme geometry-zsh/geometry

antigen apply

alias ls=exa # Requires Exa
GEOMETRY_PROMPT_PLUGINS=(exec_time git jobs node)

# WSL -> Windows X-Server configuration
export DISPLAY=:0 #The basic Display variable required for graphical programs to work with the windows Xserver.
export XDG_RUNTIME_DIR=$HOME/.xdg_runtime #This isn't set by default i made a temporary dir in my home folder and it exports there.
export RUNLEVEL=3 #System Runlevel required for some apps to install without warnings.
sudo /etc/init.d/dbus start  #A way to almost perfectly start dbus with far less error's this auto creates the missing dbus folder as well

# Requires FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
