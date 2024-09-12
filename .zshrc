export TERM="xterm-256color"
export PATH="$PATH:$HOME/.bin"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if [ $commands[kubectl] ]; then
  source <(kubectl completion zsh)
  compdef _kubectl kubectl
  alias k=kubectl
  #compdef -F __start_kubectl k
fi

if [ $commands[oc] ]; then
  source <(oc completion zsh)
  compdef _oc oc
fi

if [ $commands[hlctl] ]; then
  hlctl update > /dev/null
  source <(hlctl completion zsh)
  compdef _hlctl hlctl
fi

if [ $commands[flux] ]; then
  source <(flux completion zsh)
  compdef _flux flux
fi

if [ $commands[starship] ]; then
  source <(starship init zsh)
  compdef _starship starship
fi

source /home/oshemesh/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/oshemesh/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /home/oshemesh/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/oshemesh/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias rm='rm -i'

WORDCHARS=''

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^R" history-substring-search-up

# starting dir
cd ~/workspace

#PATH=$PATH:$HOME/.local/bin/
#source ~/.bash_completion.d/hlctl_completion

# custom kubectl alias
alias kg="k get"
alias kd="k describe"
