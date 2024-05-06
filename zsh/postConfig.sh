
eval $(thefuck --alias)

# sourcing zsh theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zoxide
eval "$(zoxide init zsh)"


# gcloud
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ellie/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ellie/google-cloud-sdk/path.zsh.inc'; fi
# enable shell command completion for gcloud.
# if [ -f '/Users/ellie/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ellie/google-cloud-sdk/completion.zsh.inc'; fi

# bun autocompletion
# [ -s "/Users/ellie/.bun/_bun" ] && source "/Users/ellie/.bun/_bun"

# iterm integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
