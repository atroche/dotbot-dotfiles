fish_vi_key_bindings
contains ~/.local/bin $fish_user_paths; or set -Ua fish_user_paths ~/.local/bin
contains ~/.cargo/bin $fish_user_paths; or set -Ua fish_user_paths ~/.cargo/bin
contains ~/.linuxbrew/bin $fish_user_paths; or set -Ua fish_user_paths ~/.linuxbrew/bin

alias p pepper
alias no-false="pcregrep -M '.*:\n +[^F ]'"
alias online-hubs="pepper '*' test.ping|pcregrep -M '.*:\n +[^F ]'|grep ":"|wc -l"

alias vim nvim
#alias ls lsd
#alias fd fdfind
#alias cat bat
alias y yarn
alias yr "yarn run"
alias yi "yarn install"
alias yip "yarn install --pure-lockfile"
alias clean-merged 'git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias o open
alias g git
alias gs "git status"
alias gd "git diff"
alias gd "git pull"
alias p pepper


alias prune "docker system prune --volumes"




# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alistair/software/google-cloud-sdk/path.fish.inc' ]; . '/Users/alistair/software/google-cloud-sdk/path.fish.inc'; end


alias no-false="pcregrep -M '.*:\n +[^F ]'"

#source /usr/local/opt/asdf/libexec/asdf.fish

switch (uname)
    case Linux
        set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew";
        set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar";
        set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew";
        set -q PATH; or set PATH ''; set -gx PATH "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin" $PATH;
        set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH;
        set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH;
    case Darwin
        set -gx HOMEBREW_PREFIX "/opt/homebrew";
        set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
        set -gx HOMEBREW_REPOSITORY "/opt/homebrew";
        set -q PATH; or set PATH ''; set -gx PATH "/opt/homebrew/bin" "/opt/homebrew/sbin" $PATH;
        set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/opt/homebrew/share/man" $MANPATH;
        set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH;
    case FreeBSD NetBSD DragonFly
    case '*'
end

set -x PQ_LIB_DIR (brew --prefix libpq)"/lib"


set -gx EMAIL alistair@seermedical.com

