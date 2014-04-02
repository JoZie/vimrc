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
" TextMate-style snippets for Vim
"Plugin 'msanders/snipmate.vim'
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
