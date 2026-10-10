alias p="pnpm"
alias b="brew"
alias bi="brew install"
alias bun="brew uninstall --zap"

# Save Noctalia config and GUI overrides into the Stow package.
noctalia-export() {
  local destination="$HOME/.dotfiles/noctalia/.config/noctalia/config.toml"
  local temporary
  temporary=$(mktemp "${destination}.XXXXXX") || return
  if noctalia config export merged > "$temporary" && noctalia config validate "$temporary"; then
    mv -- "$temporary" "$destination" || { rm -f -- "$temporary"; return 1; }
    print -r -- "Exported Noctalia config to $destination"
  else
    rm -f -- "$temporary"
    return 1
  fi
}

# pnpm
export PNPM_HOME="/Users/martynas/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
