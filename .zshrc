#powerlevel10k
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh



#zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh



#autojump
[[ -s /home/samo/.autojump/etc/profile.d/autojump.sh ]] && source /home/samo/.autojump/etc/profile.d/autojump.sh

autoload -U compinit && compinit -u



#aliases
alias pacman="sudo pacman"
alias "i3config"="nano /home/samo/.config/i3/config"
alias cls="clear"
alias i3blocksconfig="nano /home/samo/.config/i3/i3blocks.conf"
alias la="ls -a"
alias lal="ls -al"
alias cdh="cd /home/samo"
alias rmr="rm -r"
alias rmrf="rm -rf"
alias dfh="df -h"
alias dfH="df -H"
alias picomconfig="nano /home/samo/.config/picom.conf"
alias zshconfig="nano .zshrc"
alias nanana="picom-trans -s 100"
alias errors="journalctl -p 3 -xb"

#zsh-syntax-highlighting
#KEEP AT THE BOTTOM
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

#source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
