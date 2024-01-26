# Dependencies You Need for this Config
#   zsh-autosuggestions 
#   zsh-syntax-highlighting
#   autojump 


# use Windows' git when working under C:\ drive
function git() {
  if $(pwd -P | grep -q "^\/mnt\/*"); then
    git.exe "$@"
  else
    command git "$@"
  fi
}

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
eval "$(starship init zsh)"

# Custom Variables
export EDITOR=vim
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Aliases
alias ls='ls --color=auto'
alias l='ls -l'
alias ll='ls -Al'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cat='batcat -p'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh_history
setopt appendhistory

# Basic auto/tab complete:
[[ -x /usr/bin/dircolors ]] && eval $(/usr/bin/dircolors)
autoload -U compinit && compinit
#zstyle ':completion:*' menu select
zstyle ':completion:*' infix-match yes
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Custom ZSH Binds
bindkey '^ ' autosuggest-accept

# Load ; should be last.
[[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 
[[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -f /usr/share/autojump/autojump.sh ]] && source /usr/share/autojump/autojump.sh

# Add rust toolchain path
export PATH="$PATH:~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin:/user/local/bin:/~.local/bin"

