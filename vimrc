"The MIT License (MIT)
"
"Copyright (c) 2014 Johannes Ziegenbalg <Johannes.Ziegenbalg@gmail.com>
"
"Permission is hereby granted, free of charge, to any person obtaining a copy
"of this software and associated documentation files (the "Software"), to deal
"in the Software without restriction, including without limitation the rights
"to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
"copies of the Software, and to permit persons to whom the Software is
"furnished to do so, subject to the following conditions:
"
"The above copyright notice and this permission notice shall be included in
"all copies or substantial portions of the Software.
"
"THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
"IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
"FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
"AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
"LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
"OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
"THE SOFTWARE.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle plug-in manager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set nocompatible
    filetype off

    " set the install path of plugins Vundle and initialize
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle
    Plugin 'gmarik/vundle'

"" Other programming language support ""
""""""""""""""""""""""""""""""""""""""""
    " Vim support for editing R code
    Plugin 'vim-scripts/Vim-R-plugin'
    "  LaTeX plugin for Vim
    Plugin 'coot/atp_vim'

"" C/C++ programming ""
"""""""""""""""""""""""
    " Syntax checking hacks for vim
    Plugin 'scrooloose/syntastic'
    " UltiSnips is the ultimate solution for snippets in Vim.
    Plugin 'SirVer/ultisnips'
    " vim-snipmate default snippets
    Plugin 'honza/vim-snippets'

"" UI improvements ""
"""""""""""""""""""""
    " Vim motions on speed!
    Plugin 'Lokaltog/vim-easymotion'
    " Elegant buffer explorer - takes very little screen space
    Plugin 'fholgado/minibufexpl.vim'
    " A tree explorer plugin for vim.
    Plugin 'scrooloose/nerdtree'
    " It tries to find out root project directory in NERD_tree.
    Plugin 'git@github.com:JohannesZiegenbalg/NERD-tree-project.git'
    " Source code browser
    Plugin 'vim-scripts/taglist.vim'
    " quoting/parenthesizing made simple
    Plugin 'tpope/vim-surround'
    "  enable repeating supported plugin maps with "."
    Plugin 'tpope/vim-repeat'
    " A code-completion engine for Vim
    Plugin 'Valloric/YouCompleteMe'
    " The ultimate vim statusline utility.
    Plugin 'Lokaltog/vim-powerline'
    " Building on Vim’s spell-check and thesaurus/dictionary completion
    Plugin 'reedes/vim-lexical'

"" Color schemes ""
"""""""""""""""""""
    Plugin 'sjl/badwolf'
    Plugin 'vim-scripts/summerfruit256.vim'

    filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Plug-in settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" UltiSnips ""
"""""""""""""""
    let g:UltiSnipsExpandTrigger="<Leader>"
    let g:UltiSnipsJumpForwardTrigger="<Leader>"
    let g:UltiSnipsJumpBackwardTrigger="<s-Leader>"

"" NERDTree  ""
"""""""""""""""
    let NERDTreeChDirMode = 1

"" Powerline  ""
""""""""""""""""
    let g:Powerline_symbols='fancy'
    " Always show the statusline
    set laststatus=2
    " Necessary to show Unicode glyphs
    set encoding=utf-8

"" Mini Buffer Explorer ""
""""""""""""""""""""""""""
    map <Leader>e :MBEOpen<cr>
    map <Leader>c :MBEClose<cr>
    map <Leader>t :MBEToggle<cr>
    " disable autostart
    let g:miniBufExplorerAutoStart = 0
    " debugging settings
    "let g:miniBufExplDebugMode  = 1
    "let g:miniBufExplDebugLevel = 10

"" Automatic LaTeX Pugin ""
"""""""""""""""""""""""""""
    filetype plugin on
    syntax on
    " disable automatic compilation of LaTeX
    au BufRead *.tex let b:atp_autex=0
    " disable generation of '.project.vim' file
    let g:atp_ProjectScript=0

"" Vim Lexical ""
"""""""""""""""""
    filetype plugin indent on
    let g:lexical#spell = 0
    let g:lexical#spelllang = ['en','de',]
    let g:lexical#dictionary = ['/usr/share/dict/british-english',
                              \ '/usr/share/dict/american-english',
                              \ '/usr/share/dict/ngerman',]
    augroup lexical
        autocmd!
        autocmd FileType * call lexical#init()
    augroup END

"" YouCompleteMe ""
"""""""""""""""""""
    " keys to move down through completion list
    let g:ycm_key_list_select_completion = ['<TAB>']
    " keys to move up through completion list
    let g:ycm_key_list_previous_completion = ['<S-TAB>']
    " switchoff confirmation of loading .ycm_extra_conf.py
    let g:ycm_confirm_extra_conf = 0
    " enable completion in all filetypes
    let g:ycm_filetype_blacklist = {}

"" Taglist ""
"""""""""""""
    let Tlist_Auto_Open=1
    let Tlist_Use_Right_Window=1
    let Tlist_Exit_OnlyWindow=1
    " add settings for LaTeX files
    let tlist_tex_settings= 'latex;s:sections;g:graphics;l:labels'
    " add settings for UPC files
    let tlist_upc_settings = 'c;d:macro;g:enum;s:struct;u:union;t:typedef;' .
                           \ 'v:variable;f:function'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vim UI settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " no-compatible mode with vi
    set nocompatible

    " cd to dir of file in buffer
    autocmd BufEnter,BufRead * silent! lcd %:p:h

"" GUI settings ""
""""""""""""""""""
    " use 256 colors
    set t_Co=256
    " select colorscheme
    colorscheme badwolf
    " Always show the statusline
    set laststatus=2
    " show linenumbers
    set number
    " always show tabline
    set showtabline=1

"" Highlighting ""
""""""""""""""""""
    " swich-on syntax highlighting
    syntax on
    " highlight current cursor line
    set cursorline
    " highlight specific column
    set colorcolumn=100
    " highlight unwanted spaces
    set list
    set lcs=tab:░░,trail:█

"" Folding ""
"""""""""""""
    " foldmethod
    set fdm=syntax
    " width of fold column
    set fdc=1
    " open folds automatically
    autocmd Syntax * normal zR

"" Tabstop & indentions ""
""""""""""""""""""""""""""
    " columns used per <TAB>
    set tabstop=4
    " columns for indention with << & >>
    set shiftwidth=4
    " keep indention from previous line
    set autoindent
    " insert extra level of indention if needed
    set smartindent

"" File settings ""
"""""""""""""""""""
    " use utf-8 for fileencoding
    set encoding=utf-8
    " Don't use .swp files
    set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " disable Arrow in insert mode
    ino <Up> <Nop>
    ino <right> <Nop>
    ino <left> <Nop>
    ino <Down> <Nop>

"" F-Button remapping ""
"""""""""""""""""""""""""
    " toggle hlsearch
    nnoremap <F5> :set hlsearch! hlsearch?<CR>
    " do beautification
    nnoremap <F6> :w <CR> :call Uncrustify() <CR> :w <CR>

    " Toggle NERDTree
    nnoremap <F9> :ToggleNERDTree <CR>
    " Toggle Taglist
    nnoremap <F10> :TlistToggle <CR>
    " Toggle extra tab for compilaion
    map <F11> :call ToggleBuildTab() <CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim script functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Code beautification ""
"""""""""""""""""""""""""
    function! Uncrustify()
        let cmd = '%!uncrustify -q -c '

        let cfg = g:ProjectRoot
        let cfg .= '/uncrustify.cfg'

        if exists("cfg") && filereadable(cfg)
            let cmd .= cfg
        else
            let cmd .= '~/.uncrustify.cfg'
        endif
        let cmd .= ' -f %'

        execute cmd
    endfunction

"" A Tab for compilation ""
"""""""""""""""""""""""""""
    let s:buildTab = 'off'
    function! ToggleBuildTab()
        if s:buildTab == 'off'
            :tabnew | :tabm 0  | :copen
            let s:buildTab = 'on'
        else
            :tabclose 1
            let s:buildTab = 'off'
        endif
    endfunction
