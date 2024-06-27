# PS1='%{$(tput cols)>╡>%F{cyan}╔╡%F{red}[%n]%F{cyan}:%F{yellow}[%m]%F{cyan}➾%F{green}[%~]%F{default}$PS1_GIT%F{cyan}${(l:tput cols::═:):-}%<<
# ╚═╡%F{default}'
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="agnoster"

# Which plugins to load
plugins=(
	git
	zsh-autosuggestions
	you-should-use
	zsh-syntax-highlighting # must be last plugin loaded
)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"