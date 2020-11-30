eval "$(rbenv init -)"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

for file in ~/.{exports,aliases,functions,numero-zshrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

autoload -Uz compinit && compinit

eval "$(starship init zsh)"

plugins=(git z)
