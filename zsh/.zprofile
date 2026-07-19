# Homebrew
for brew in \
    /opt/homebrew/bin/brew \
    /usr/local/bin/brew \
    /home/linuxbrew/.linuxbrew/bin/brew
do
    if [[ -x "$brew" ]]; then
        eval "$("$brew" shellenv)"
        break
    fi
done

# Opencode
export OPENCODE_EXPERIMENTAL_BACKGROUND_SUBAGENTS=true

# Mise
eval "$(mise activate zsh)"