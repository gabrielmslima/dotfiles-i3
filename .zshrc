# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR=nvim
export TERM=alacritty
export NOTES_DIR=/home/gabriel/Projects/notes

plugins=(
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
    fast-syntax-highlighting
)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

source $ZSH/oh-my-zsh.sh

alias notes='nvim ~/anotacoes.txt'
alias v='nvim'
alias c='clear'
alias nf='fastfetch'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias shutdown='systemctl poweroff'
alias wifi='nmtui'
alias ta='tmux attach'
alias glowe='glow ~/.nb/ETEC/'
alias dev='cd ~/dev'
alias tmxc='nvim ~/.tmux.conf'
alias cd="z"
alias py="python3"

eval "$(zoxide init zsh)"

source $HOME/.local/bin/fzf-zsh-completion.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=bg+:-1,bg:-1,spinner:#fb4934,hl:#928374,fg:-1,header:#928374,info:#8ec07c,pointer:#fb4934,marker:#fb4934,fg+:#ebdbb2,prompt:#fb4934,hl+:#fb4934
  --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="~ ❯"
  --marker="◆" --pointer="❮>" --separator="─" --scrollbar="│"'

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
