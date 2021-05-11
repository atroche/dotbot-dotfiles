fish_vi_key_bindings
contains ~/.local/bin $fish_user_paths; or set -Ua fish_user_paths ~/.local/bin
contains ~/.cargo/bin $fish_user_paths; or set -Ua fish_user_paths ~/.cargo/bin
contains ~/.linuxbrew/bin $fish_user_paths; or set -Ua fish_user_paths ~/.linuxbrew/bin

alias vim nvim
alias fd fdfind
alias cat bat
alias y yarn
alias yr "yarn run"
alias yi "yarn install"
alias yip "yarn install --pure-lockfile"
alias clean-merged 'git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias ls "lsd"
alias o open


alias prune "docker system prune --volumes"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/alistair/software/google-cloud-sdk/path.fish.inc' ]; . '/home/alistair/software/google-cloud-sdk/path.fish.inc'; end

thefuck --alias | source 
