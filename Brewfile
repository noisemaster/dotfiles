cask_args appdir: "/Applications"
tap "homebrew/cask-fonts"
tap "homebrew/cask-versions"

ALL_FFMPEG_OPTIONS = `brew options ffmpeg | grep -vE '\s' | grep -- '--with-'`.gsub("--", "").split("\n")

brew "mas"

mas "Numbers", id: 409203825
mas "Pages", id: 409201541

cask "1Password"
cask "alfred"
cask "discord-canary"
cask "firefox-nightly"
cask "iina"
cask "iterm2"
cask "istat-menus"
cask "keepingyouawake"
cask "spotify"
cask "visual-studio-code-insiders"

cask "font-fira-code"

brew "exa"
brew "ffmpeg", args: ALL_FFMPEG_OPTIONS
brew "neovim"
brew "neofetch"
brew "youtube-dl"
brew "wget"
brew "zsh"
