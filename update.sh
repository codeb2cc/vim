#!/bin/bash

declare -A repos

repos["bundle/ack"]="https://github.com/mileszs/ack.vim.git"
repos["bundle/align"]="https://github.com/vim-scripts/Align.git"
repos["bundle/bufexplorer"]="https://github.com/vim-scripts/bufexplorer.zip.git"
repos["bundle/ctrlp"]="https://github.com/kien/ctrlp.vim.git"
repos["bundle/emmet-vim"]="https://github.com/mattn/emmet-vim.git"
repos["bundle/matchit"]="https://github.com/vim-scripts/matchit.zip.git"
repos["bundle/nerdcommenter"]="https://github.com/scrooloose/nerdcommenter.git"
repos["bundle/nerdtree"]="https://github.com/scrooloose/nerdtree.git"
repos["bundle/supertab"]="https://github.com/ervandew/supertab.git"
repos["bundle/surround"]="https://github.com/tpope/vim-surround.git"
repos["bundle/syntastic"]="https://github.com/scrooloose/syntastic.git"
repos["bundle/tagbar"]="https://github.com/majutsushi/tagbar.git"
repos["bundle/vim-airline"]="https://github.com/bling/vim-airline.git"
repos["bundle/vim-fugitive"]="https://github.com/tpope/vim-fugitive.git"
repos["bundle/vim-gitgutter"]="https://github.com/airblade/vim-gitgutter.git"
repos["bundle/vim-golang"]="https://github.com/jnwhiteh/vim-golang.git"
repos["bundle/vim-less"]="https://github.com/groenewege/vim-less.git"
repos["bundle/vim-unimpaired"]="https://github.com/tpope/vim-unimpaired.git"
repos["bundle/xterm-color-table"]="https://github.com/guns/xterm-color-table.vim.git"
repos["bundle/yankring"]="https://github.com/vim-scripts/YankRing.vim.git"
repos["bundle/vim-gocode"]="https://github.com/Blackrush/vim-gocode.git"

for repo in "${!repos[@]}"
do
    git subtree pull --prefix ${repo} ${repos[$repo]} master --squash
done

