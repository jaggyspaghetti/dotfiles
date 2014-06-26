""""""""""""""""""""""""""""""
" vundle
""""""""""""""""""""""""""""""

set nocompatible                   " be iMproved, required
filetype off                       " required

set rtp+=~/.vim/bundle/Vundle.vim  " set the runtime path to include Vundle and initialize
call vundle#begin()                " Initialize Vundle
Plugin 'gmarik/Vundle.vim'         " let Vundle manage Vundle, required



""""""""""""""""""""""""""""""
" Files
""""""""""""""""""""""""""""""

" Keymaps
if filereadable(glob('~/.vimrc.plugins'))
    source ~/.vimrc.plugins
endif

" Keymaps
if filereadable(glob('~/.vimrc.keymap'))
    source ~/.vimrc.keymap
endif

" Load the plugin thingies
call vundle#end()           " required
filetype plugin indent on


""""""""""""""""""""""""""""""
" Pathogen
""""""""""""""""""""""""""""""
" execute pathogen#infect()




""""""""""""""""""""""""""""""
" Airlne
""""""""""""""""""""""""""""""
let g:airline_theme             = 'tomorrow'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1

" vim-powerline symbols
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_branch_prefix     = '⭠'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'




""""""""""""""""""""""""""""""
" Ctrl-P
""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*/vendor/*,*.zip,*/.sass-cache/*,*/node_modules/*









""""""""""""""""""""""""""""""
" Configuration
""""""""""""""""""""""""""""""
let mapleader=","                                        " Leader Key

syntax enable                                            " Enable Syntax Highlightin
color torte                                              " Color scheme!
highlight ColorColumn ctermbg=darkyellow                 " Change the ruler color


set laststatus=2                                         " Activate Powerline
set relativenumber                                       " Relative Line numbers
set cmdheight=1                                          " It's 2 by default
set colorcolumn=80,120                                   " Margin for PSR Compliance
set mouse=a                                              " Make the scrolling available

set encoding=utf-8                                       " Always UTF-8
set t_Co=256                                             " Set 256 color terminal

set tabstop=4                                            " Columns per tab
set shiftwidth=4                                         " Indentation >> and << count
set expandtab                                            " Convert tabs into spaces

set list                                                 " Show invisiable characters
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<  " Set invisiable Characters





""""""""""""""""""""""""""""""
" Autocommands
""""""""""""""""""""""""""""""
autocmd BufWritePre * :%s/\s\+$//e " Remove excess white space
autocmd BufRead,BufNewFile *.twig set filetype=htmljinja " Use the twig syntax highlighting





