codeb2cc's Vim Configuration (Windows Version)
==============================================
Author: codeb2cc

Email: codeb2cc{at}gmail.com

Installation
--------------------
* Using Git Bash:

1. Check out

        git clone git://github.com/codeb2cc/vim.git $HOME/vimfiles

2. Link config file

        cp $HOME/vimfiles/vimrc $HOME/_vimrc

3. Fetch vim plugins

        cd $HOME/vimfiles
        git submodule update --init

Shortcuts
---------

* `F2`: NERDTree window
* `F3`: Tagbar window
* `F4`:
* `F5`: Place a sign on current line
* `F6`: Remove a sign on current line
* `F7`: Update the `Last Modified` string
* `F8`: shortcut of `:nohlsearch<CR>`
* `F9`: miniBufExpl window
* `F10`: YankRing window

For more detail, just look into the vimrc file.

Plugins Reference
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
* [Coffee-script](https://github.com/kchmck/vim-coffee-script)

