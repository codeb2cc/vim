codeb2cc's Vim Configuration
============================
Author: codeb2cc

Email: codeb2cc{at}gmail.com

INSTALLATION (Linux)
--------------------

1. Check out from github

  `git clone git://github.com/codeb2cc/vim.git ~/.vim`

2. Link config file

  `ln -s ~/.vim/vimrc ~/.vimrc`

3. Fetch vim plugins

  `cd ~/.vim
  git submodule update --init`

INSTALLATION (Windows)
----------------------

Similar to the installation on Linux, except `.vim` -> `vimfiles` and `.vimrc` -> `_vimrc`. Put them in your HOME directory like:

  `C:\Users\codeb2cc\`

SHORTCUTS
---------

* `F2`: NERDTree window
* `F3`: Tagbar window
* `F4`:
* `F5`: Place a sign on current line
* `F6`: Remove a sign on current line
* `F7`: Update the 'Last Modified' string
* `F8`: shortcut of `:nohlsearch<CR>`
* `F9`: miniBufExpl window
* `F10`: YankRing window
* `F11`: Syntastic check

For more detail, just look into the vimrc file.

PLUGINS REFERENCE
-----------------

* [Pathogen](https://github.com/tpope/vim-pathogen)
* [miniBufExpl](https://github.com/fholgado/minibufexpl.vim)
* [Tagbar](https://github.com/majutsushi/tagbar)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [NERDCommenter](https://github.com/scrooloose/nerdcommenter)
* [YankRing](https://github.com/vim-scripts/YankRing.vim)
* [SuperTab](https://github.com/ervandew/supertab)
* [Surround](https://github.com/tpope/vim-surround)
* [delimitMate](https://github.com/Raimondi/delimitMate)
* [Syntastic](https://github.com/scrooloose/syntastic)
* [VCSCommand](http://http://repo.or.cz/w/vcscommand.git)
* [Python-mode](https://github.com/klen/python-mode)
* [Coffee-script](https://github.com/kchmck/vim-coffee-script)
* [Xterm-Color-Table](https://github.com/guns/xterm-color-table.vim)

