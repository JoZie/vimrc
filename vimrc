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
    Plugin 'JohannesZiegenbalg/NERD_tree-Project'
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

" Automatic LaTeX Pugin ""
""""""""""""""""""""""""""
    filetype plugin on
    syntax on
    " disable automatic compilation of LaTeX
    au BufRead *.tex let b:atp_autex=0
    " disable generation of '.project.vim' file
    let g:atp_ProjectScript=0

" YouCompleteMe ""
""""""""""""""""""
    " keys to move down through completion list
    let g:ycm_key_list_select_completion = ['<TAB>']
    " keys to move up through completion list
    let g:ycm_key_list_previous_completion = ['<S-TAB>']
    " confirmation of loading .ycm_extra_conf.py needed?
	let g:ycm_confirm_extra_conf = 0

" Taglist ""
""""""""""""
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

" GUI settings ""
"""""""""""""""""
    " use 256 colors
    set t_Co=256
    " select colorscheme
    colorscheme badwolf
    " Always show the statusline
    set laststatus=2
    " show linenumbers
    set number
    " always show tabline
    set showtabline=2

" Highlighting ""
"""""""""""""""""
    " swich-on syntax highlighting
    syntax on
    " highlight current cursor line
    set cursorline
    " highlight specific column
    set colorcolumn=100

" Tabstop & indentions ""
"""""""""""""""""""""""""
    " columns used per <TAB>
    set tabstop=4
    " columns for indention with << & >>
    set shiftwidth=4
    " keep indention from previous line
   v set autoindent
    " insert extra level of indention if needed
    set smartindent

" File settings ""
""""""""""""""""""
    " use utf-8 for fileencoding
    set encoding=utf-8
    " Don't use .swp files
    set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    " disable Arrow in insert mode
    ino <Up> <Nop>
    ino <right> <Nop>
    ino <left> <Nop>
    ino <Down> <Nop>
