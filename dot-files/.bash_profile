
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

cd ${PWD} # Make RVM reactivate when new Konsole tab is opened (is it still relevant?)

export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\]\$ "
export PATH="$HOME/bin:$HOME/.local/bin:$PATH"
export HISTFILESIZE=10000000
export EDITOR="emacs --quick"

alias cal="ncal -3 -M -b"
alias watch="watch --differences --color --interval 0.2 unbuffer"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
