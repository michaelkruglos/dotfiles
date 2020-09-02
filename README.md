# dotfiles

Dotfiles with my configurations licensed under AGPL 3.0, see [License](#License) section below.

# Installation
## vim plug

Run the following command:
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Follow instructions on [vim-plug repo](https://github.com/junegunn/vim-plug)

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
