# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# system aliases
alias ls="ls --color=auto"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias asd="yay -Syu --noconfirm"

# git aliases
alias gd="git diff"
alias gs="git status"
alias ga="git add ."
alias gat="git add -u"
alias gc="git commit -m"
alias gps="git push"
alias gpf="git push --force"
alias gpl="git pull"
alias qwe='f() { ga && gc $1 && gps };f' #single quotes are required for arguments to work bc they are passed as double quote strings
alias gbdel='f() { git branch -D $1 };f'
alias gb='f() { git checkout -b $1 };f'
alias gsw='f() { git switch $1 };f'
alias gch='f() { git checkout $1 };f'
# opam configuration
[[ ! -r /home/iscii/.opam/opam-init/init.zsh ]] || source /home/iscii/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null