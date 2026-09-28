alias p="pnpm"
alias b="brew"

# pnpm
export PNPM_HOME="/Users/martynas/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
