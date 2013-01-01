" Description   : Vim Configuration File
" Author        : Codeb Fan
" Email         : codeb2cc@gmail.com
" Last Modified : 2012 01 29 - 16:42

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

    " Custom highlight group
        " color eyes {
        "  hi User1 ctermfg=15  ctermbg=161  guifg=#ffffff guibg=#d92534
        "  hi User2 ctermfg=233 ctermbg=252  guifg=#121212 guibg=#e4eaf2
        "  hi User3 ctermfg=15  ctermbg=31   guifg=#ffffff guibg=#75bfbf
        "  hi User4 ctermfg=15  ctermbg=100  guifg=#ffffff guibg=#babf21
        "  hi User5 ctermfg=15  ctermbg=202  guifg=#ffffff guibg=#f25d27
        " }
        " limekiln {
        "   hi User1 ctermfg=15  ctermbg=25   guifg=#ffffff guibg=#0084b0
        "   hi User2 ctermfg=15  ctermbg=30   guifg=#ffffff guibg=#009694
        "   hi User3 ctermfg=15  ctermbg=35   guifg=#ffffff guibg=#35ab57
        "   hi User4 ctermfg=15  ctermbg=106  guifg=#ffffff guibg=#8ab833
        "   hi User5 ctermfg=15  ctermbg=148  guifg=#ffffff guibg=#c0cf3a
        " }
        " ctfi {
            hi User1 ctermfg=15  ctermbg=37   guifg=#ffffff guibg=#03acb1
            hi User2 ctermfg=15  ctermbg=30   guifg=#ffffff guibg=#028785
            hi User3 ctermfg=15  ctermbg=35   guifg=#ffffff guibg=#04b15e
            hi User4 ctermfg=15  ctermbg=70   guifg=#ffffff guibg=#83b901
            hi User5 ctermfg=15  ctermbg=214  guifg=#ffffff guibg=#fd8300
        " }
        " ikea {
        "   hi User1 ctermfg=15  ctermbg=0    guifg=#ffffff guibg=#040404
        "   hi User2 ctermfg=15  ctermbg=106  guifg=#ffffff guibg=#98bf0b
        "   hi User3 ctermfg=15  ctermbg=244  guifg=#ffffff guibg=#41443d
        "   hi User4 ctermfg=233 ctermbg=253  guifg=#121212 guibg=#dcdcdc
        "   hi User5 ctermfg=15  ctermbg=130  guifg=#ffffff guibg=#a67951
        " }

    " Status Line
    if has('statusline')
        set laststatus=2        " Always show
        set statusline=         " Reset StatusLine

        " 1st block
        set statusline+=%1*\                    " Color
        set statusline+=%{SyntasticStatuslineFlag()}    " Syntastic Plugin
      " set statusline+=[%n]                    " Buffer number
        set statusline+=[%P\ %4.l,%3.c]         " Navigation info
        " 2nd block
        set statusline+=\ %2*\                  " Color
        set statusline+=[%<%.36(%{getcwd()}%)]  " Current directory
        " 3rd block
        set statusline+=\ %3*\                  " Color
        set statusline+=%=                      " Right aligned items begin
        set statusline+=[%1.(%M%)]              " Modified flag
        set statusline+=%.([%t]%r%h%w%)         " File name
        " 4th block
        set statusline+=\ %4*\                          " Color
      " set statusline+=[%{FileSize()}]                 " File size
        set statusline+=[%{strlen(&ft)?&ft:'none'}]     " File type
        set statusline+=[%{strlen(&fenc)?&fenc:&enc}]   " Encoding
      " set statusline+=[%{&fileformat}]                " File format
      " set statusline+=[ASCII:%03.3b]          " Cursor character's ASCII code
      " set statusline+=[HEX:%02.2B]            " Cursor character's Hex value
        " 5th block
        set statusline+=\ %5*\                  " Color
        set statusline+=[%{strftime(\"%Y/%m/%d\ %T\")}]   " Current data and time
        " End
        set statusline+=\                       " Trailing spaces
    endif

    set cursorline          " Highlight current line
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
        nmap <silent> <F10> :YRShow<CR>
    " }

    " Syntastic {
        let g:syntastic_auto_jump = 1
        let g:syntastic_mode_map = { 'mode': 'passive',
                                   \ 'active_filetypes': ['python', 'javascript', 'html'],
                                   \ 'passive_filetypes': [] }
        let g:syntastic_stl_format = '[E:%e #fe, W:%w #%fw]'
        nmap <silent> <F4> :SyntasticCheck<CR>
        let g:syntastic_javascript_jshint_conf = "--lastsemic"
    " }

    " Python-mode {
        let g:pymode_lint_write = 0
        let g:pymode_lint_checker = "pyflakes"
    " }
" }

" Utilities {
    " Last modified tag {
    function LastMod()
        " Search the first 10 lines
        if line("$") > 10
            let l = 10
        else
            let l = line("$")
        endif
        " Search the Last Modified string and renew the date time
        let tag = "Last Change"
        execute "1," . l . "g/" . tag . ": /s/" . tag . ": .*/" . tag . ": " . strftime("%Y-%m-%d %H:%M")
    endfunction
    nmap <silent> <F7> :call LastMod()<CR>
    autocmd BufWritePre * :call LastMod()
    " }

    " Quick sign {
        sign define information text=!> linehl=warning texthl=error
        map <silent> <F5> :exe ":sign place 7 line=" .line(".") ." name=information file=" . expand("%:p")<CR>
        map <silent> <F6> :sign unplace<CR>
    " }

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


