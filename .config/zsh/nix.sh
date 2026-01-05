if [ -e /etc/profile.d/nix.sh ]; then
    . /etc/profile.d/nix.sh
fi

# Add nix-shell indicator to prompt
function nix_shell_prompt () {
    # Check for nix-shell environment
    # IN_NIX_SHELL is set by nix-shell and nix develop commands
    if [[ -n "$IN_NIX_SHELL" ]]; then
        REPLY="[%F{cyan}NIX%f] "
    else
        REPLY=""
    fi
}

# Add the nix-shell token to the grml prompt system
if (( ${+functions[grml_theme_add_token]} )); then
    grml_theme_add_token nix-shell -f nix_shell_prompt '' '%f'

    # Use zstyle to add the nix-shell indicator to all prompt themes
    # This is the recommended way to customize grml prompts
    zstyle ':prompt:grml:left:setup' items rc change-root user at host path vcs nix-shell percent
    zstyle ':prompt:grml-large:left:setup' items rc jobs history shell-level change-root time date newline user at host path vcs nix-shell percent
    zstyle ':prompt:grml-chroot:left:setup' items grml-chroot user at host path nix-shell percent
fi
