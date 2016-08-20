" Vundle {

    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    Plugin 'majutsushi/tagbar'
    Plugin 'scrooloose/nerdtree'
    Plugin 'fatih/vim-go'
    Plugin 'fholgado/minibufexpl.vim'
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'octol/vim-cpp-enhanced-highlight'
    Plugin 'vim-scripts/TaskList.vim'
    Plugin 'klen/python-mode'
    Plugin 'tpope/vim-markdown'
    Plugin 'Lokaltog/vim-powerline'
    Plugin 'kien/ctrlp.vim'
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'rdnetto/YCM-Generator'

    " All of your Plugins must be added before the following line
    call vundle#end()            " required

" }


" Environment {

    " Identify platform {
        silent function! OSX()
            return has('macunix')
        endfunction
        silent function! LINUX()
            return has('unix') && !has('macunix') && !has('win32unix')
        endfunction
        silent function! WINDOWS()
            return  (has('win32') || has('win64'))
        endfunction
    " }

    " Basics {
        set nocompatible        " Must be first line
        if !WINDOWS()
            set shell=/bin/sh
        endif
    " }

    " Windows Compatible {
        " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
        " across (heterogeneous) systems easier.
        if WINDOWS()
          set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
        endif
    " }

    " Arrow Key Fix {
        " https://github.com/spf13/spf13-vim/issues/780
        if &term[:4] == "xterm" || &term[:5] == 'screen' || &term[:3] == 'rxvt'
            inoremap <silent> <C-[>OC <RIGHT>
        endif
    " }

" }


" Tagbar
let g:tagbar_width = 35
let g:tagbar_left = 1
let g:tagbar_sort = 0

" Nerdtree
let NERDTreeWinPos = "right"

" Golang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_fmt_autosave = 0
let g:go_play_open_browser = 0
let g:go_get_update = 0

" CtrlP
let g:ctrlp_map = '<C-m>'

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-[>"
"let g:UltiSnipsJumpBackwardTrigger="<c-o>"

" YCM
let g:ycm_confirm_extra_conf=0
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
nmap gc :YcmCompleter GoToDefinitionElseDeclaration<CR>


" Syntax and Indent
filetype plugin indent on
syntax on


" Color
syntax enable
set t_Co=256
set background=light
let g:solarized_termcolors=256
let g:solarized_visibility="normal"
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
colorscheme solarized

set colorcolumn=80

set cursorline  " must after 'Syntax and Indent'
hi CursorLine ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
hi CursorLineNr ctermbg=187 ctermfg=red guibg=NONE guifg=NONE
"set cursorcolumn
"hi CursorColumn cterm=NONE ctermbg=lightgray ctermfg=black guibg=NONE guifg=NONE
"hi LineNr ctermbg=NONE ctermfg=darkgrey guibg=NONE guifg=NONE
"hi Pmenu ctermbg=cyan ctermfg=darkgrey guibg=darkblue guifg=white


" Key map
nmap wm :TagbarToggle<cr>
nmap wf :NERDTreeToggle<cr>
nmap wt :TaskList<cr>
nmap j gj
nmap k gk


" encoding
let &termencoding=&encoding
set fileencodings=utf-8,gbk,gb2312,gb18030,big5,cp1256,cp1253,cp10006,cp20423,cp28597,cp1255,cp1256


" Line number and Ruler
set number
set numberwidth=5
set ruler


" Tab
set shiftwidth=4
set expandtab
set tabstop=8
"set cindent


" Fold
nmap fmi :set foldmethod=indent<cr>
nmap fmm :set foldmethod=marker<cr>


" Ctags
nmap <c-]> g<c-]>


" Cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>0 :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>1 :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>3 :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>4 :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>6 :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>7 :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>8 :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>2 :cs find d <C-R>=expand("<cword>")<CR><CR>


" For mutt
"set tw=99999999
autocmd BufEnter mutt-* 0r ~/mail/files/signature


" Other
"set updatetime=500
set incsearch
set backspace=indent,eol,start


" Jump to the last position when reopening a file
if has("autocmd")
    " In text files, always limit the width of text to 78 characters
    " autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
