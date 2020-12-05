
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

cd ${PWD} # Make RVM reactivate when new Konsole tab is opened

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
    source ~/.config/exercism/exercism_completion.bash
fi

export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\]\$ "
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export EMPIRE_API_URL=https://core-empire.veeqo.com
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export HISTFILESIZE=10000000
export EDITOR="emacs --quick"

alias cal="cal -3 -N -M -C"
alias watch="watch -n0.2"
