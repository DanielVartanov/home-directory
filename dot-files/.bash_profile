
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

cd ${PWD} # Make RVM reactivate when new Konsole tab is opened (is it still relevant?)

export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\w\[\033[00m\]\$ "
export HISTFILESIZE=10000000
export EDITOR="emacs --quick"

export FZF_DEFAULT_COMMAND="fd --hidden --follow --exclude .git --color=never"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type directory"

alias cal="ncal -3 -M -b"
alias watch="watch --differences --color --interval 0.2 unbuffer"
alias less="less --quit-if-one-screen"
alias cat="echo -e 'Please use \e[32mless\e[0m instead of \e[31mcat\e[0m unless you concatenate\n\n' >&2 && sleep 0.5 && cat"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
