# VIM config

1. Install VIM
```bash
sudo apt-get install vim
```

2. Install Vundle package manager
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. Copy ```.vimrc``` to your home directory
```bash
git clone https://github.com/rikonek/vim-config.git ~/
ln -s ~/vim-config/.vimrc ~/.vimrc
```

4. Run VIM and install plugins
```bash
vim
:source %
:PluginInstall
```

5. Prepare YouCompleteMe plugin
```bash
sudo apt-get install cmake python-dev python3-dev
~/.vim/bundle/youcompleteme/install.py --clang-completer
```

# Keyboard shortcuts

| Shortcut | Command | Description |
| --- | --- | --- |
| CTRL-b |  | Toggle NERD Tree |
| CTRL-n | :Startify | Startify |
| CTRL-m |  | Toggle tag bar |
| [c |  | Previous git changes |
| ]c |  | Next git changes |
| CTRL-w n |  | New window |
| CTRL-w v | :vsplit | Split window |
| CTRL-w q | :q | Quit |
| CTRL-w arrow | :wincmd hjkl | Move cursor to other window |
| CTRL-w CTRL-w |  | Move cursor to next window |
| CTRL-w r |  | Swap splitted windows |
| CTRL-w v | :vsplit | Vertical split window |
| CTRL-w t | :tabnew | New tab |
| CTRL-w t q | :tabclose | Close tab |
| CTRL-w h | :tabprev | Previous tab |
| CTRL-w l | :tabnext | Next tab |

# Useful commands

| Command | Description |
| --- | --- |
| :%retab! | Retabulate the whole file |
| :Gblame | Show git commits in line |
