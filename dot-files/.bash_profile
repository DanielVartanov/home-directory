
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

cd ${PWD} # Make RVM reactivate when new Konsole tab is opened

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export EMPIRE_API_URL=https://core-empire.veeqo.com
