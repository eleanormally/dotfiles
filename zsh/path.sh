

# export PATH=~/Documents/cbug/bin:"$PATH"
export PATH="~/.local/bin":"$PATH"
export PATH="/Users/ellie/zig":"$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# go install (stuff like air)
export PATH="$PATH:$(go env GOPATH)/bin"
