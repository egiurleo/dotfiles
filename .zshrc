source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

for file in ~/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

autoload -Uz compinit && compinit

eval "$(starship init zsh)"

eval "$(rbenv init -)"
