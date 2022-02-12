# Path to your oh-my-zsh installation.
export ZSH="/home/drmoscovium/.oh-my-zsh"

# Theme
ZSH_THEME="nord/nord"

#plugins=(git zsh-autosuggestions material-colors zsh-syntax-highlighting ls zsh-dircolors-nord)

source $ZSH/custom/themes/$ZSH_THEME.zsh-theme


# User configuration

## Spaceship configuration
#LS_COLORS=$LS_COLORS:'ow=01;34:' ; export LS_COLORS

#SPACESHIP_PROMPT_ORDER=(
#  user          # Username section
#  host          # Hostname section
#  dir           # Current directory section
#  git           # Git section (git_branch + git_status)
#  hg            # Mercurial section (hg_branch  + hg_status)
#  exec_time     # Execution time
#  line_sep      # Line break
#  vi_mode       # Vi-mode indicator
#  jobs          # Background jobs indicator
#  exit_code     # Exit code section
#  char          # Prompt character
#)

#SPACESHIP_USER_SHOW="always" # Shows System user name before directory name
#SPACESHIP_HOST_SHOW="always" # Shows System user name before directory name

#SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_PROMPT_SEPARATE_LINE=false # Make the prompt span across two lines
# SPACESHIP_DIR_TRUNC=1 # Shows only the last directory folder name

#SPACESHIP_CHAR_SYMBOL="➜"
#SPACESHIP_CHAR_SUFFIX=" "

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias mysql="/opt/lampp/bin/mysql"
alias spotify="flatpak run com.spotify.Client"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias config="~/.bin/config.sh"

# Default editor
export EDITOR=nvim

# Node Version Manager export
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

unsetopt PROMPT_SP

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias ls="ls --color=auto"
alias vim="nvim"
alias thrust="git push"
alias succ="git pull"
alias gangbang="git add ."
alias die="shutdown -P now"
alias emerge="sudo pacman -S"
alias hack="hollywood"
alias mkdir="mkdir -p"

export PATH="$PATH:$HOME/.local/bin/:$HOME/.local/share/nvim/lsp_servers/rust/"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


source ~/.git-prompt.sh
