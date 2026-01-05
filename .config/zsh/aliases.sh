
alias nv='nvim'
alias docker='podman'
export PATH=$PATH:/home/LightJack05/.dotnet/tools/:~/go/bin/
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH
alias vim='nvim'
alias neofetch='fastfetch'
export MAKEFLAGS="-j32"
alias m=make
alias g=git
alias c=clear
alias p="popd"
alias k=kubectl
alias v=vim
alias mc=mcli
alias help="echo 'There is no escape for you, mortal!' | lolcat"
alias fs='CONFIG_FILE_NAME="tmux-sessionizer-source.conf" ~/bin/tmux-sessionizer/tmux-sessionizer'
alias fd='CONFIG_FILE_NAME="tmux-sessionizer-dir.conf" ~/bin/tmux-sessionizer/tmux-sessionizer 2> /dev/null'
alias fa='tmux new -d -s'
alias ff='~/bin/tmux-sessionizer/find-session'
alias nix-shell='nix-shell --run zsh'
alias nix-develop='nix develop --command zsh'
