# Local aliases
# --------------------------------------
alias zreload='source ~/.zshrc'
alias ls="ls -lhFGA --color=always --group-directories-first"
alias ll='ls -la'
alias l='ls -l'
alias rm='rm -i'

alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# Tool
alias g=git
alias t=tmux

alias vi='vim'
alias vim='vim'

alias sc='systemctl'
alias jc='journalctl'
alias jj='journalctl -f -u'

# Edit dotfile
alias dotedit='${EDITOR} ~/.dotfiles'

# Work
alias enable='rake dev:betas:enable BETA="online-store-sections-everywhere,online-store-sections-everywhere-internal"'
alias disable='rake dev:betas:disable BETA="online-store-sections-everywhere,online-store-sections-everywhere-internal"'
