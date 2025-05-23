export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$PWD/node_modules/.bin:$PATH
export HOMEBREW_NO_ANALYTICS=1

export DOCKER_HOST="unix://$HOME/.colima/default/docker.sock"

if [[ -f "/opt/homebrew/bin/brew" ]] then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if type brew &>/dev/null; then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else 
	export EDITOR='nvim'
fi

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/omp.yaml)"
fi

source /opt/homebrew/opt/zinit/zinit.zsh

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

alias c="$EDITOR"
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -rfv"
alias mkdir="mkdir -pv"
alias cd="z"
alias ~="cd ~"
alias p="cd ~/Developer/"
alias dl="cd ~/Downloads/"
alias f="open -a Finder"
alias ls="eza"
alias cat="bat"
alias g="git"
alias weather="curl v2d.wttr.in"

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --ansi --preview-window=right:60% --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

ssh () {
	local ps_res
	ps_res=$(ps -p $(ps -p $$ -o ppid= | xargs) -o comm=)

	if [ "$ps_res" = "tmux" ]; then
		tmux rename-window "ssh:$(echo $argv | cut -d . -f 1)"
		command ssh $argv
		tmux set-window-option automatic-rename "on" >/dev/null
	else
		command ssh $argv
	fi
}

docker_rm_stopped() {
  docker rm $(docker ps -a -q)
}

eval $(thefuck --alias)
source <(fzf --zsh)
eval "$(zoxide init zsh)"

export GPG_TTY=$(tty)
