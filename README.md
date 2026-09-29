# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/). Each folder is a package that mirrors `$HOME`.

## New device

```bash
git clone https://github.com/martynasgz/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
brew bundle install --file=Brewfile # or Brewfile.work
stow zsh aerospace # choose packages
exec zsh
```

## Adding a config

```bash
mkdir -p ~/.dotfiles/app/.config/app
mv ~/.config/app/config.toml ~/.dotfiles/app/.config/app/
cd ~/.dotfiles && stow -nv app && stow app
```

## Commands

- `stow <pkg>` / `stow -D <pkg>` / `stow -R <pkg>`: link / unlink / relink
- `brew bundle check --file=Brewfile`: verify Brewfile is installed
- `brew bundle cleanup --file=Brewfile`: show packages not in Brewfile
- `brew bundle dump --file=Brewfile.current`: dump current packages into a Brewfile

## Notes

- `.stowrc` sets `--no-folding` and ignores `.DS_Store`