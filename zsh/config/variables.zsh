# Global variables
# --------------------------------------

# Terminal config
export DISPLAY
export WORDCHARS='*?_[]~=&;!#$%^(){}'

# Timezone
export TZ="America/Montreal"

# History limits
export HISTFILE=$HOME/.zhistory
export HISTSIZE=1000000
export SAVEHIST=1000000

# Utilities
export PAGER='less'
export EDITOR='code'
export VISUAL='vim'
export GIT_EDITOR='vim'
export BROWSER='open'
export LESS="-+e -+f -R -+c -X -M -S -r"

# Locales
export LANG="en_US.UTF-8"
export LC_ALL=$LANG

# Path
export PATH="$HOME/.zsh/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
