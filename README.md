# dotfiles

My configurations built for Mac OS X. Take anything you want but at your own risks
I have take large inspirations from [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles), [Scripting OS X](https://scriptingosx.com/2019/06/moving-to-zsh/) and [Sourabh Bajaj](https://sourabhbajaj.com/mac-setup/index.html)

- Creates aliases `~/.aliases`
- My homebrew installed formulae and cask
- Settings for
  - Mac OS X
  - git and GitHub
  - Terminal prompt & theme
  - node.js `./setup/node.sh`
  - vim, using `vim-plug`

All extra configuration should be added to `~/.extra`

# Installation

```bash
sh install.sh
```

If you're running this script from a fresh out of the box mac, please run the following first

```bash
sudo softwareupdate -i -a
xcode-select --install
```
