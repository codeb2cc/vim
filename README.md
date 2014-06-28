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

3. Hava fun

        vim

Shortcuts
---------

* `F2` : NERDTree window
* `F3` : Tagbar window
* `F4` : Syntastic check
* `F5` :
* `F6` :
* `F7` :
* `F8` : shortcut of `:nohlsearch<CR>`
* `F9` : Bufexplorer window
* `F10`: YankRing window

For more detail, just look into the vimrc file.


Plugins Upgrade
---------------

As I've replaced `submodule` with `subtree` to manage bundle plugins, there's no one-step upgrade
any more. From now on, use the `subtree pull` command instead:

      git subtree pull --prefix bundle/ack https://github.com/mileszs/ack.vim.git master --squash

or use the `update.sh` script:

      sh update.sh


References:

* `bundle/ack` : https://github.com/mileszs/ack.vim.git
* `bundle/align` : https://github.com/vim-scripts/Align.git
* `bundle/bufexplorer` : https://github.com/vim-scripts/bufexplorer.zip.git
* `bundle/ctrlp` : https://github.com/kien/ctrlp.vim.git
* `bundle/emmet-vim` : https://github.com/mattn/emmet-vim.git
* `bundle/matchit` : https://github.com/vim-scripts/matchit.zip.git
* `bundle/nerdcommenter` : https://github.com/scrooloose/nerdcommenter.git
* `bundle/nerdtree` : https://github.com/scrooloose/nerdtree.git
* `bundle/supertab` : https://github.com/ervandew/supertab.git
* `bundle/surround` : https://github.com/tpope/vim-surround.git
* `bundle/syntastic` : https://github.com/scrooloose/syntastic.git
* `bundle/tagbar` : https://github.com/majutsushi/tagbar.git
* `bundle/vim-airline` : https://github.com/bling/vim-airline.git
* `bundle/vim-fugitive` : https://github.com/tpope/vim-fugitive.git
* `bundle/vim-gitgutter` : https://github.com/airblade/vim-gitgutter.git
* `bundle/vim-golang` : https://github.com/jnwhiteh/vim-golang.git
* `bundle/vim-less` : https://github.com/groenewege/vim-less.git
* `bundle/vim-unimpaired` : https://github.com/tpope/vim-unimpaired.git
* `bundle/xterm-color-table` : https://github.com/guns/xterm-color-table.vim.git
* `bundle/yankring` : https://github.com/vim-scripts/YankRing.vim.git
* `bundle/vim-gocode` : https://github.com/Blackrush/vim-gocode.git

