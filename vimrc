" Description   : Vim Configuration File
" Author        : Codeb Fan
" Email         : codeb2cc@gmail.com

" Environment {
    " Basics {
        set nocompatible
        set t_Co=256
    " }
    " Pathogen Setting {
        call pathogen#runtime_append_all_bundles()
        call pathogen#helptags()
        filetype off    " Force reloading
        filetype plugin indent on
    " }
" }

" General {
  " set mouse=a         " Automatically enable mouse usage
    syntax on           " Syntax highlight
    scriptencoding UTF-8
    set viewoptions=folds,options,cursor,unix,slash     " Better Uinx/Windows compatibility
    set history=40      " Command-line history number
  " set spell           " Spell checking

    " No sound on errors
    set noerrorbells
    set novisualbell

    " Backup while file being written but no back file
    set nobackup
    set writebackup

    " Force Django template html syntax
  " autocmd FileType html :set syntax=htmldjango
" }

" UI {
    " Different time different color scheme {
        let time = eval(strftime("%H"))
        if has('gui_running')
            if time > 18 || time < 6
                execute "colorscheme molokai"
            else
                execute "colorscheme chela_light"
            endif
        else
            if time > 18 || time < 6
                execute "colorscheme xterm16"
            else
                execute "colorscheme molokai"
            endif
        endif
    " }

    " Hide menu and set font
    if has('gui_running')
        set guioptions-=m
        set guifont=inconsolata\ 13
    endif

    " Ruler
    if has('cmdline_info')
      " set ruler
      " set rulerformat=[%n:%04l,%03v]
        set showcmd
    endif

    " Status Line
    if has('statusline')
        set laststatus=2        " Always show
    endif

    set cursorline          " Highlight current line
    set cursorcolumn
    set backspace=indent,eol,start
    set whichwrap+=<,>,h,l  " Backspace and cursor keys wrap to
    set linespace=0         " No extra space between rows
    set number              " Show line numbers
    set showmatch           " Show matching brackets/parenthesis
    set hlsearch            " Highlight search result
  " set incsearch           " Find as you type search
    set ignorecase          " Case insensitive search
    set smartcase           " Case sensitive when upper case present
    set wildmenu            " Command completion
    set wildmode=list:longest,full      " Command completion mode
    set scrolljump=3        " Lines to scroll when cursor leaves screen
    set scrolloff=3         " Minimum lines to keep above and below cursor
    set foldenable          " Auto fold code
    set foldcolumn=2        " Fold mark columns
    set foldmethod=indent   " Fold method
    set list
    set listchars=tab:>.,trail:+,extends:#,nbsp:.       " Highlight problematic whitespace
" }

" Template {
    autocmd BufNewFile *.html    0r ~/.vim/template/template.html
    autocmd BufNewFile *.py    0r ~/.vim/template/template.py
" }

" Key Mappings {
    " Change map leader, default is '\'
    let mapleader = ','

    " Moving in tabs and windows
    map <C-Down> <C-W>j
    map <C-Up> <C-W>k
    map <C-Left> <C-W>h
    map <C-Right> <C-W>l
    map <C-J> <C-W>j
    map <C-K> <C-W>k
    map <C-H> <C-W>h
    map <C-L> <C-W>l

    " Moving between buffers
    " map <C-J> :bp<CR>
    " map <C-K> :bn<CR>

    " Completion
    inoremap <C-O> <C-X><C-O>
    inoremap <C-N> <C-X><C-N>
    inoremap <C-P> <C-X><C-P>
    inoremap <C-F> <C-X><C-F>
    inoremap <C-K> <C-X><C-K>

    " Clipboard
    vnoremap <C-Y> "*Y
    nnoremap <C-P> "*p

    " Wrapped lines goes down/up to next row, rather than next line in file
    nnoremap j gj
    nnoremap k gk

    " Clear highlighted search
    nmap <silent> <F8> :nohlsearch<CR>
" }

" Plugins {
    " Tagbar {
        nmap <F3> :TagbarToggle<CR>
        let g:tagbar_autoclose = 0
      " let g:tagbar_left = 1
      " let g:tagbar_width = 30
    " }

    " Surround {
        " To determine the ASCII code to use, :echo char2nr("-")
        " ASCII 45: -
        let g:surround_45 = "{% \r %}"
    " }

    " NerdTree {
        let NERDTreeShowBookmarks = 1
        let NERDTreeQuitOnOpen    = 0
        let NERDTreeShowHidden    = 1

        nmap <silent> <F2> :NERDTreeToggle<CR>
        nmap <Leader>ae :NERDTreeToggle<CR>
    " }

    " NerdCommenter {
       let NERDSpaceDelims = 1
    " }

    " Bufexplorer {
        nmap <silent> <F9> :BufExplorer<CR>
        let g:bufExplorerShowTabBuffer = 1
    " }

    " YankRing {
        let g:yankring_history_file = '.yankring_history'
        let g:yankring_window_height = 6
        let g:yankring_replace_n_pkey = ''
        nmap <silent> <F10> :YRShow<CR>
    " }

    " Syntastic {
        let g:syntastic_auto_jump = 1
        let g:syntastic_auto_loc_list = 1
        let g:syntastic_mode_map = { 'mode': 'passive',
                                   \ 'active_filetypes': ['python', 'javascript', 'html'],
                                   \ 'passive_filetypes': [] }
        let g:syntastic_stl_format = '[E:%e %fe, W:%w #%fw]'
        nmap <silent> <F4> :SyntasticCheck<CR>
        let g:syntastic_python_checkers = ['flake8']
        let g:syntastic_python_flake8_args = "--max-line-length 120 --ignore E203,E226,E241,E242,W391"
        let g:syntastic_javascript_jshint_conf = "--lastsemic"
    " }

    " Ctrlp {
    " }

    " Airline {
        let g:airline#extensions#tabline#enabled = 1
        let g:airline_powerline_fonts = 1
    " }
" }

" Utilities {
    " File size {
    function  FileSize()
        let bytes = getfsize(expand("%:p"))
        if bytes <= 0
            return "new"
        endif
        if bytes < 1024
            return bytes
        else
            return (bytes / 1024) . "K"
        endif
    endfunction
    " }
" }

" Formatting {
    set wrap            " Wrap long lines
    set expandtab       " Use spaces instead of tabs
    set shiftwidth=4    " Use indents of 4 spaces
    set softtabstop=4   " Number of spaces in editing operation
    set tabstop=4       " Indentation length
    set autoindent      " Indent at the same level of the previous line

    " File type specific setting is in the after/ftplugin folder

    " Remove trailing white spaces and ^M chars
    autocmd FileType c,cpp,java,php,js,python autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
" }


