
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

cd ${PWD} # Make RVM reactivate when new Konsole tab is opened (is it still relevant?)

export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;36m\]\w\[\033[00m\]\$ "
export HISTFILESIZE=10000000
export EDITOR="emacs --quick"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"
export GOPATH=$HOME/.go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude .git --color=never"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type directory"

alias cal="ncal -3 -M -b"
alias watch="watch --differences --color --interval 0.2 unbuffer"
alias less="less --quit-if-one-screen"
alias cat="echo -e 'Please use \e[32mbat\e[0m instead of \e[31mcat\e[0m unless you concatenate\n\n' >&2 && sleep 0.5 && cat"
alias grep="echo -e 'Please use \e[32mrg\e[0m instead of \e[31mgrep\e[0m\n\n' >&2 && sleep 0.5 && grep"
alias lsblk="lsblk --exclude 7 --output +FSTYPE " # Exclude snap clutter
alias df='df --human-readable --exclude-type=squashfs' # Exclude snap clutter


# RVM

export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# vterm (PS1 config has to be the last, right after RVM config)

vterm_printf() {
    if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ]); then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}

vterm_prompt_end(){
    vterm_printf "51;A$(whoami)@$(hostname):$(pwd)"
}

export PS1=$PS1'\[$(vterm_prompt_end)\]'
