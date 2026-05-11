. ~/.config/zsh/grml.sh
. ~/.config/zsh/aliases.sh
. ~/.config/zsh/funk.sh
. ~/.config/zsh/nix.sh
for _f in ~/.config/zsh/completions/*.sh; do . "$_f"; done; unset _f
