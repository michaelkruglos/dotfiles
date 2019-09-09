# dotfiles

Dotfiles with my configurations licensed under AGPL 3.0, see [License](#License) section below.

# Installation
## Vundle for vim:

Run the following command:
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## gitconfig

Just edit your `~/.gitconfig` file and prepend the following lines to the file:
```gitconfig
  [include]
    path = ~/dotfiles/gitconfig
```
Replace dotfiles in the path above with wherever you cloned the directory

## nvmrc
## npmrc
## irbrc

# License

All these files are under AGPL 3.0. This license, most likely doesn't fit your usecase, so you'll have to write your own dotfiles.
Please see [LICENSE](./LICENSE) for more details.
