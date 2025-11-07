# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi




setopt autocd extendedglob histignorealldups sharehistory

source ~/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle command-not-found

antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle <<EOBUNDLES
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-completions
    casonadams/alacritty-shell
    raisty/alt-and-select
    Sam-programs/zsh-calc
    GeoLMg/apt-zsh-plugin
    zuxfoucault/colored-man-pages_mod
    aemonge/zsh-hookie-projects
    chrissicool/zsh-256color
    z-shell/zsh-fancy-completions
    zdharma-continuum/zui
EOBUNDLES

# Load the theme.
antigen theme romkatv/powerlevel10k

antigen apply

# Created by `pipx` on 2025-11-07 03:03:26
export PATH="$PATH:/home/caleb/.local/bin"

alias cls="clear"
alias v="nvim"
alias sv="sudoedit"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
