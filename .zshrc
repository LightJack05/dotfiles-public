# Created by newuser for 5.9
#export LC_ALL=en_US.UTF-8  
#export LANG=en_US.UTF-8
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
#compdef eww

autoload -U is-at-least

_eww() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
'-V[Print version]' \
'--version[Print version]' \
":: :_eww_commands" \
"*::: :->eww" \
&& ret=0
    case $state in
    (eww)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:eww-command-$line[1]:"
        case $line[1] in
            (shell-completions)
_arguments "${_arguments_options[@]}" \
'-s+[]:SHELL:(bash elvish fish powershell zsh)' \
'--shell=[]:SHELL:(bash elvish fish powershell zsh)' \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(daemon)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(logs)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(ping)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
'*::mappings -- variable_name="new_value"-pairs that will be updated:' \
&& ret=0
;;
(inspector)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(open)
_arguments "${_arguments_options[@]}" \
'--id=[]:ID: ' \
'--screen=[The identifier of the monitor the window should open on]:SCREEN: ' \
'-p+[The position of the window, where it should open. (i.e.\: 200x100)]:POS: ' \
'--pos=[The position of the window, where it should open. (i.e.\: 200x100)]:POS: ' \
'-s+[The size of the window to open (i.e.\: 200x100)]:SIZE: ' \
'--size=[The size of the window to open (i.e.\: 200x100)]:SIZE: ' \
'-a+[Sidepoint of the window, formatted like "top right"]:ANCHOR: ' \
'--anchor=[Sidepoint of the window, formatted like "top right"]:ANCHOR: ' \
'--duration=[Automatically close the window after a specified amount of time, i.e.\: 1s]:DURATION: ' \
'*--arg=[Define a variable for the window, i.e.\: \`--arg "var_name=value"\`]:ARGS: ' \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--toggle[If the window is already open, close it instead]' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
':window_name -- Name of the window you want to open:' \
&& ret=0
;;
(open-many)
_arguments "${_arguments_options[@]}" \
'*--arg=[Define a variable for the window, i.e.\: \`--arg "window_id\:var_name=value"\`]:ARGS: ' \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--toggle[If a window is already open, close it instead]' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
'*::windows -- List the windows to open, optionally including their id, i.e.\: `--window "window_name\:window_id"`:' \
&& ret=0
;;
(close)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
'*::windows:' \
&& ret=0
;;
(reload)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(kill)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(close-all)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(state)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'-a[Shows all variables, including not currently used ones]' \
'--all[Shows all variables, including not currently used ones]' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(get)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
':name:' \
&& ret=0
;;
(list-windows)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(active-windows)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(debug)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help (see more with '\''--help'\'')]' \
'--help[Print help (see more with '\''--help'\'')]' \
&& ret=0
;;
(graph)
_arguments "${_arguments_options[@]}" \
'-c+[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--config=[override path to configuration directory (directory that contains eww.yuck and eww.(s)css)]:CONFIG:_files' \
'--debug[Write out debug logs. (To read the logs, run \`eww logs\`)]' \
'--force-wayland[Force eww to use wayland. This is a no-op if eww was compiled without wayland support]' \
'--logs[Watch the log output after executing the command]' \
'--no-daemonize[Avoid daemonizing eww]' \
'--restart[Restart the daemon completely before running the command]' \
'-h[Print help]' \
'--help[Print help]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
":: :_eww__help_commands" \
"*::: :->help" \
&& ret=0

    case $state in
    (help)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:eww-help-command-$line[1]:"
        case $line[1] in
            (shell-completions)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(daemon)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(logs)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(ping)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(update)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(inspector)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(open)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(open-many)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(close)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(reload)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(kill)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(close-all)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(state)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(get)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(list-windows)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(active-windows)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(debug)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(graph)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
&& ret=0
;;
        esac
    ;;
esac
;;
        esac
    ;;
esac
}

(( $+functions[_eww_commands] )) ||
_eww_commands() {
    local commands; commands=(
'shell-completions:Generate a shell completion script' \
'daemon:Start the Eww daemon' \
'logs:Print and watch the eww logs' \
'ping:Ping the eww server, checking if it is reachable' \
'update:Update the value of a variable, in a running eww instance' \
'inspector:Open the GTK debugger' \
'open:Open a window' \
'open-many:Open multiple windows at once. NOTE\: This will in the future be part of eww open, and will then be removed' \
'close:Close the given windows' \
'reload:Reload the configuration' \
'kill:Kill the eww daemon' \
'close-all:Close all windows, without killing the daemon' \
'state:Prints the variables used in all currently open window' \
'get:Get the value of a variable if defined' \
'list-windows:List the names of active windows' \
'active-windows:Show active window IDs, formatted linewise \`<window_id>\: <window_name>\`' \
'debug:Print out the widget structure as seen by eww' \
'graph:Print out the scope graph structure in graphviz dot format' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'eww commands' commands "$@"
}
(( $+functions[_eww__active-windows_commands] )) ||
_eww__active-windows_commands() {
    local commands; commands=()
    _describe -t commands 'eww active-windows commands' commands "$@"
}
(( $+functions[_eww__help__active-windows_commands] )) ||
_eww__help__active-windows_commands() {
    local commands; commands=()
    _describe -t commands 'eww help active-windows commands' commands "$@"
}
(( $+functions[_eww__close_commands] )) ||
_eww__close_commands() {
    local commands; commands=()
    _describe -t commands 'eww close commands' commands "$@"
}
(( $+functions[_eww__help__close_commands] )) ||
_eww__help__close_commands() {
    local commands; commands=()
    _describe -t commands 'eww help close commands' commands "$@"
}
(( $+functions[_eww__close-all_commands] )) ||
_eww__close-all_commands() {
    local commands; commands=()
    _describe -t commands 'eww close-all commands' commands "$@"
}
(( $+functions[_eww__help__close-all_commands] )) ||
_eww__help__close-all_commands() {
    local commands; commands=()
    _describe -t commands 'eww help close-all commands' commands "$@"
}
(( $+functions[_eww__daemon_commands] )) ||
_eww__daemon_commands() {
    local commands; commands=()
    _describe -t commands 'eww daemon commands' commands "$@"
}
(( $+functions[_eww__help__daemon_commands] )) ||
_eww__help__daemon_commands() {
    local commands; commands=()
    _describe -t commands 'eww help daemon commands' commands "$@"
}
(( $+functions[_eww__debug_commands] )) ||
_eww__debug_commands() {
    local commands; commands=()
    _describe -t commands 'eww debug commands' commands "$@"
}
(( $+functions[_eww__help__debug_commands] )) ||
_eww__help__debug_commands() {
    local commands; commands=()
    _describe -t commands 'eww help debug commands' commands "$@"
}
(( $+functions[_eww__get_commands] )) ||
_eww__get_commands() {
    local commands; commands=()
    _describe -t commands 'eww get commands' commands "$@"
}
(( $+functions[_eww__help__get_commands] )) ||
_eww__help__get_commands() {
    local commands; commands=()
    _describe -t commands 'eww help get commands' commands "$@"
}
(( $+functions[_eww__graph_commands] )) ||
_eww__graph_commands() {
    local commands; commands=()
    _describe -t commands 'eww graph commands' commands "$@"
}
(( $+functions[_eww__help__graph_commands] )) ||
_eww__help__graph_commands() {
    local commands; commands=()
    _describe -t commands 'eww help graph commands' commands "$@"
}
(( $+functions[_eww__help_commands] )) ||
_eww__help_commands() {
    local commands; commands=(
'shell-completions:Generate a shell completion script' \
'daemon:Start the Eww daemon' \
'logs:Print and watch the eww logs' \
'ping:Ping the eww server, checking if it is reachable' \
'update:Update the value of a variable, in a running eww instance' \
'inspector:Open the GTK debugger' \
'open:Open a window' \
'open-many:Open multiple windows at once. NOTE\: This will in the future be part of eww open, and will then be removed' \
'close:Close the given windows' \
'reload:Reload the configuration' \
'kill:Kill the eww daemon' \
'close-all:Close all windows, without killing the daemon' \
'state:Prints the variables used in all currently open window' \
'get:Get the value of a variable if defined' \
'list-windows:List the names of active windows' \
'active-windows:Show active window IDs, formatted linewise \`<window_id>\: <window_name>\`' \
'debug:Print out the widget structure as seen by eww' \
'graph:Print out the scope graph structure in graphviz dot format' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'eww help commands' commands "$@"
}
(( $+functions[_eww__help__help_commands] )) ||
_eww__help__help_commands() {
    local commands; commands=()
    _describe -t commands 'eww help help commands' commands "$@"
}
(( $+functions[_eww__help__inspector_commands] )) ||
_eww__help__inspector_commands() {
    local commands; commands=()
    _describe -t commands 'eww help inspector commands' commands "$@"
}
(( $+functions[_eww__inspector_commands] )) ||
_eww__inspector_commands() {
    local commands; commands=()
    _describe -t commands 'eww inspector commands' commands "$@"
}
(( $+functions[_eww__help__kill_commands] )) ||
_eww__help__kill_commands() {
    local commands; commands=()
    _describe -t commands 'eww help kill commands' commands "$@"
}
(( $+functions[_eww__kill_commands] )) ||
_eww__kill_commands() {
    local commands; commands=()
    _describe -t commands 'eww kill commands' commands "$@"
}
(( $+functions[_eww__help__list-windows_commands] )) ||
_eww__help__list-windows_commands() {
    local commands; commands=()
    _describe -t commands 'eww help list-windows commands' commands "$@"
}
(( $+functions[_eww__list-windows_commands] )) ||
_eww__list-windows_commands() {
    local commands; commands=()
    _describe -t commands 'eww list-windows commands' commands "$@"
}
(( $+functions[_eww__help__logs_commands] )) ||
_eww__help__logs_commands() {
    local commands; commands=()
    _describe -t commands 'eww help logs commands' commands "$@"
}
(( $+functions[_eww__logs_commands] )) ||
_eww__logs_commands() {
    local commands; commands=()
    _describe -t commands 'eww logs commands' commands "$@"
}
(( $+functions[_eww__help__open_commands] )) ||
_eww__help__open_commands() {
    local commands; commands=()
    _describe -t commands 'eww help open commands' commands "$@"
}
(( $+functions[_eww__open_commands] )) ||
_eww__open_commands() {
    local commands; commands=()
    _describe -t commands 'eww open commands' commands "$@"
}
(( $+functions[_eww__help__open-many_commands] )) ||
_eww__help__open-many_commands() {
    local commands; commands=()
    _describe -t commands 'eww help open-many commands' commands "$@"
}
(( $+functions[_eww__open-many_commands] )) ||
_eww__open-many_commands() {
    local commands; commands=()
    _describe -t commands 'eww open-many commands' commands "$@"
}
(( $+functions[_eww__help__ping_commands] )) ||
_eww__help__ping_commands() {
    local commands; commands=()
    _describe -t commands 'eww help ping commands' commands "$@"
}
(( $+functions[_eww__ping_commands] )) ||
_eww__ping_commands() {
    local commands; commands=()
    _describe -t commands 'eww ping commands' commands "$@"
}
(( $+functions[_eww__help__reload_commands] )) ||
_eww__help__reload_commands() {
    local commands; commands=()
    _describe -t commands 'eww help reload commands' commands "$@"
}
(( $+functions[_eww__reload_commands] )) ||
_eww__reload_commands() {
    local commands; commands=()
    _describe -t commands 'eww reload commands' commands "$@"
}
(( $+functions[_eww__help__shell-completions_commands] )) ||
_eww__help__shell-completions_commands() {
    local commands; commands=()
    _describe -t commands 'eww help shell-completions commands' commands "$@"
}
(( $+functions[_eww__shell-completions_commands] )) ||
_eww__shell-completions_commands() {
    local commands; commands=()
    _describe -t commands 'eww shell-completions commands' commands "$@"
}
(( $+functions[_eww__help__state_commands] )) ||
_eww__help__state_commands() {
    local commands; commands=()
    _describe -t commands 'eww help state commands' commands "$@"
}
(( $+functions[_eww__state_commands] )) ||
_eww__state_commands() {
    local commands; commands=()
    _describe -t commands 'eww state commands' commands "$@"
}
(( $+functions[_eww__help__update_commands] )) ||
_eww__help__update_commands() {
    local commands; commands=()
    _describe -t commands 'eww help update commands' commands "$@"
}
(( $+functions[_eww__update_commands] )) ||
_eww__update_commands() {
    local commands; commands=()
    _describe -t commands 'eww update commands' commands "$@"
}

if [ "$funcstack[1]" = "_eww" ]; then
    _eww "$@"
else
    compdef _eww eww
fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/mcli mcli
#compdef podman
compdef _podman podman

# zsh completion for podman                               -*- shell-script -*-

__podman_debug()
{
    local file="$BASH_COMP_DEBUG_FILE"
    if [[ -n ${file} ]]; then
        echo "$*" >> "${file}"
    fi
}

_podman()
{
    local shellCompDirectiveError=1
    local shellCompDirectiveNoSpace=2
    local shellCompDirectiveNoFileComp=4
    local shellCompDirectiveFilterFileExt=8
    local shellCompDirectiveFilterDirs=16
    local shellCompDirectiveKeepOrder=32

    local lastParam lastChar flagPrefix requestComp out directive comp lastComp noSpace keepOrder
    local -a completions

    __podman_debug "\n========= starting completion logic =========="
    __podman_debug "CURRENT: ${CURRENT}, words[*]: ${words[*]}"

    # The user could have moved the cursor backwards on the command-line.
    # We need to trigger completion from the $CURRENT location, so we need
    # to truncate the command-line ($words) up to the $CURRENT location.
    # (We cannot use $CURSOR as its value does not work when a command is an alias.)
    words=("${=words[1,CURRENT]}")
    __podman_debug "Truncated words[*]: ${words[*]},"

    lastParam=${words[-1]}
    lastChar=${lastParam[-1]}
    __podman_debug "lastParam: ${lastParam}, lastChar: ${lastChar}"

    # For zsh, when completing a flag with an = (e.g., podman -n=<TAB>)
    # completions must be prefixed with the flag
    setopt local_options BASH_REMATCH
    if [[ "${lastParam}" =~ '-.*=' ]]; then
        # We are dealing with a flag with an =
        flagPrefix="-P ${BASH_REMATCH}"
    fi

    # Prepare the command to obtain completions
    requestComp="${words[1]} __complete ${words[2,-1]}"
    if [ "${lastChar}" = "" ]; then
        # If the last parameter is complete (there is a space following it)
        # We add an extra empty parameter so we can indicate this to the go completion code.
        __podman_debug "Adding extra empty parameter"
        requestComp="${requestComp} \"\""
    fi

    __podman_debug "About to call: eval ${requestComp}"

    # Use eval to handle any environment variables and such
    out=$(eval ${requestComp} 2>/dev/null)
    __podman_debug "completion output: ${out}"

    # Extract the directive integer following a : from the last line
    local lastLine
    while IFS='\n' read -r line; do
        lastLine=${line}
    done < <(printf "%s\n" "${out[@]}")
    __podman_debug "last line: ${lastLine}"

    if [ "${lastLine[1]}" = : ]; then
        directive=${lastLine[2,-1]}
        # Remove the directive including the : and the newline
        local suffix
        (( suffix=${#lastLine}+2))
        out=${out[1,-$suffix]}
    else
        # There is no directive specified.  Leave $out as is.
        __podman_debug "No directive found.  Setting do default"
        directive=0
    fi

    __podman_debug "directive: ${directive}"
    __podman_debug "completions: ${out}"
    __podman_debug "flagPrefix: ${flagPrefix}"

    if [ $((directive & shellCompDirectiveError)) -ne 0 ]; then
        __podman_debug "Completion received error. Ignoring completions."
        return
    fi

    local activeHelpMarker="_activeHelp_ "
    local endIndex=${#activeHelpMarker}
    local startIndex=$((${#activeHelpMarker}+1))
    local hasActiveHelp=0
    while IFS='\n' read -r comp; do
        # Check if this is an activeHelp statement (i.e., prefixed with $activeHelpMarker)
        if [ "${comp[1,$endIndex]}" = "$activeHelpMarker" ];then
            __podman_debug "ActiveHelp found: $comp"
            comp="${comp[$startIndex,-1]}"
            if [ -n "$comp" ]; then
                compadd -x "${comp}"
                __podman_debug "ActiveHelp will need delimiter"
                hasActiveHelp=1
            fi

            continue
        fi

        if [ -n "$comp" ]; then
            # If requested, completions are returned with a description.
            # The description is preceded by a TAB character.
            # For zsh's _describe, we need to use a : instead of a TAB.
            # We first need to escape any : as part of the completion itself.
            comp=${comp//:/\\:}

            local tab="$(printf '\t')"
            comp=${comp//$tab/:}

            __podman_debug "Adding completion: ${comp}"
            completions+=${comp}
            lastComp=$comp
        fi
    done < <(printf "%s\n" "${out[@]}")

    # Add a delimiter after the activeHelp statements, but only if:
    # - there are completions following the activeHelp statements, or
    # - file completion will be performed (so there will be choices after the activeHelp)
    if [ $hasActiveHelp -eq 1 ]; then
        if [ ${#completions} -ne 0 ] || [ $((directive & shellCompDirectiveNoFileComp)) -eq 0 ]; then
            __podman_debug "Adding activeHelp delimiter"
            compadd -x "--"
            hasActiveHelp=0
        fi
    fi

    if [ $((directive & shellCompDirectiveNoSpace)) -ne 0 ]; then
        __podman_debug "Activating nospace."
        noSpace="-S ''"
    fi

    if [ $((directive & shellCompDirectiveKeepOrder)) -ne 0 ]; then
        __podman_debug "Activating keep order."
        keepOrder="-V"
    fi

    if [ $((directive & shellCompDirectiveFilterFileExt)) -ne 0 ]; then
        # File extension filtering
        local filteringCmd
        filteringCmd='_files'
        for filter in ${completions[@]}; do
            if [ ${filter[1]} != '*' ]; then
                # zsh requires a glob pattern to do file filtering
                filter="\*.$filter"
            fi
            filteringCmd+=" -g $filter"
        done
        filteringCmd+=" ${flagPrefix}"

        __podman_debug "File filtering command: $filteringCmd"
        _arguments '*:filename:'"$filteringCmd"
    elif [ $((directive & shellCompDirectiveFilterDirs)) -ne 0 ]; then
        # File completion for directories only
        local subdir
        subdir="${completions[1]}"
        if [ -n "$subdir" ]; then
            __podman_debug "Listing directories in $subdir"
            pushd "${subdir}" >/dev/null 2>&1
        else
            __podman_debug "Listing directories in ."
        fi

        local result
        _arguments '*:dirname:_files -/'" ${flagPrefix}"
        result=$?
        if [ -n "$subdir" ]; then
            popd >/dev/null 2>&1
        fi
        return $result
    else
        __podman_debug "Calling _describe"
        if eval _describe $keepOrder "completions" completions $flagPrefix $noSpace; then
            __podman_debug "_describe found some completions"

            # Return the success of having called _describe
            return 0
        else
            __podman_debug "_describe did not find completions."
            __podman_debug "Checking if we should do file completion."
            if [ $((directive & shellCompDirectiveNoFileComp)) -ne 0 ]; then
                __podman_debug "deactivating file completion"

                # We must return an error code here to let zsh know that there were no
                # completions found by _describe; this is what will trigger other
                # matching algorithms to attempt to find completions.
                # For example zsh can match letters in the middle of words.
                return 1
            else
                # Perform file completion
                __podman_debug "Activating file completion"

                # We must return the result of this command, so it must be the
                # last command, or else we must store its result to return it.
                _arguments '*:filename:_files'" ${flagPrefix}"
            fi
        fi
    fi
}

# don't run the completion function when being source-ed or eval-ed
if [ "$funcstack[1]" = "_podman" ]; then
    _podman
fi

# This file is generated with "podman completion"; see: podman-completion(1)
