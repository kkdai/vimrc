"vim-path
execute pathogen#infect()

"color theme
set t_Co=256
:colorscheme molokai


"Vundle
set nocompatible              " be iMproved, required
filetype off  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'tagbar'
Plugin 'c9s/helper.vim'
Plugin 'c9s/treemenu.vim'
Plugin 'c9s/hypergit.vim'
Plugin 'c9s/vikube.vim'
Plugin 'scrooloose/nerdcommenter'
call vundle#end() 
filetype plugin indent on    " required


"backspace behavior
set backspace=indent,eol,start
"Enable line display
set number  
"Enable mouse on vim
set mouse=a
"Enable syntax highlighter
syntax enable  
"Enable clipboard 
set clipboard=unnamed

"neocomplete
"let g:neocomplete#enable_at_startup = 1
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

"vim-go setting
let g:go_version_warning = 0
let g:go_disable_autoinstall = 0  
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_term_enabled = 1
let g:go_list_type = "quickfix"

"Hotkey for vim-go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>e <Plug>(go-rename)

map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>
"Compile and run c direct in F8
map <F8> : !gcc %; and ./a.out <CR>

"Hotkey for NERDTreeToggle
map <F3> :NERDTreeToggle<CR>

"Hotkey for Tagbar 
nmap <F4> :TagbarToggle<CR>

"Tagbar setting
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" If you prefer the Omni-Completion tip window to close when a selection is
" " made, these lines close it on movement in insert mode or when leaving
" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
