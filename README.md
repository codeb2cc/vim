codeb2cc's Vim Configuration
============================
Author: codeb2cc

Email: codeb2cc{at}gmail.com

Installation
--------------------

1. Check out

        git clone git://github.com/codeb2cc/vim.git ~/.vim

2. Link config file

        ln -s ~/.vim/vimrc ~/.vimrc

3. Fetch vim plugins

        cd ~/.vim
        git submodule update --init

4. Extra work for command-t plugin

        cd ~/.vim/bundle/command-t
        rake make

Shortcuts
---------

* `F2`: NERDTree window
* `F3`: Tagbar window
* `F4`: Syntastic check
* `F5`: Place a sign on current line
* `F6`: Remove a sign on current line
* `F7`: Update the 'Last Modified' string
* `F8`: shortcut of `:nohlsearch<CR>`
* `F9`: Bufexplorer window
* `F10`: YankRing window

For more detail, just look into the vimrc file.

Plugins Reference
-----------------

* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Bufexplorer](http://www.vim.org/scripts/script.php?script_id=42)
* [Tagbar](https://github.com/majutsushi/tagbar)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [NERDCommenter](https://github.com/scrooloose/nerdcommenter)
* [YankRing](https://github.com/vim-scripts/YankRing.vim)
* [Matchit](https://github.com/vim-scripts/matchit.zip)
* [SuperTab](https://github.com/ervandew/supertab)
* [Surround](https://github.com/tpope/vim-surround)
* [Syntastic](https://github.com/scrooloose/syntastic)
* [VCSCommand](http://http://repo.or.cz/w/vcscommand.git)
* [Python-mode](https://github.com/klen/python-mode)
* [Coffee-script](https://github.com/kchmck/vim-coffee-script)
* [Xterm-Color-Table](https://github.com/guns/xterm-color-table.vim)
* [Command-T](https://wincent.com/products/command-t)
* [VimWiki](http://code.google.com/p/vimwiki)
* [Vim-Jade](https://github.com/digitaltoad/vim-jade.git)
