set nocompatible               " be iMproved
filetype off                   " required!

"Vundle {{{
set rtp+=$HOME/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'jabapyth/vim-debug.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'python.vim--Vasiliev'
Bundle 'gg/python.vim'
Bundle 'pydoc.vim'
Bundle 'pyflakes.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'Pydiction'
Bundle 'Tagbar'
Bundle 'Conque-Shell'
Bundle 'YankRing.vim'
Bundle 'davidhalter/jedi-vim'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'plasticboy/vim-markdown'
Bundle 'elzr/vim-json'
Bundle 'flazz/vim-colorschemes'
Bundle 'mattn/emmet-vim'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
Bundle 'bling/vim-airline'
Bundle 'Raimondi/delimitMate'
Bundle 'Shougo/neocomplete'

"golang
Bundle 'fatih/vim-go'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" }}}

"use space for tab {{{
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
augroup tabsize
    autocmd!
    autocmd Filetype html setlocal ts=2 sw=2 expandtab
    autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
    autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
augroup END
"}}}

" always show status bar
set laststatus=2
" set incremental search
set incsearch
" highlighted search results
set hlsearch
" line numbers
set number

" Tag bar {{{
" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on Tagbar open
let g:tagbar_autofocus = 1
" }}}

" togglegle nerd tree
"map <F3> :NERDTreeToggle<CR>
map <F3> <plug>NERDTreeTabsToggle<CR>

"Tabs and Windows {{{
" tab nagivator
noremap tn :tabn<CR>
noremap tp :tabp<CR>
noremap tm :tabm<CR>
noremap tt :tabnew
noremap <C-S-Right> :tabn<CR>
inoremap <C-S-Right> <ESC>:tabn<CR>
noremap <C-S-Left> :tabp<CR>
inoremap <C-S-Left> <ESC>:tabp<CR>

" switch between sub window
noremap <M-Right> <c-w>l
noremap <M-Left> <c-w>h
noremap <M-Up> <c-w>k
noremap <M-Down> <c-w>j
inoremap <M-Right> <ESC><c-w>l
inoremap <M-Left> <ESC><c-w>h
inoremap <M-Up> <ESC><c-w>k
inoremap <M-Down> <ESC><c-w>j
" }}}

set scrolloff=3

" press E to execute python program
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
" set Pydiction location
let g:pydiction_location='/home/liyuan/.vim/bundle/Pydiction/complete-dict'

"color zenburn
"color torte
"colorscheme wombat256mod
"color oceanblack256
"color mustang
color xoria256
set t_Co=256

let mapleader=","

"set diffexpr=MyDiff()
"function MyDiff()
  "let opt = '-a --binary '
  "if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  "if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  "let arg1 = v:fname_in
  "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  "let arg2 = v:fname_new
  "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  "let arg3 = v:fname_out
  "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  "let eq = ''
  "if $VIMRUNTIME =~ ' '
    "if &sh =~ '\<cmd'
      "let cmd = '""' . $VIMRUNTIME . '\diff"'
      "let eq = '"'
    "else
      "let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    "endif
  "else
    "let cmd = $VIMRUNTIME . '\diff'
  "endif
  "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction


"Enable mouse
set mouse=a
"toggle paste mode by F2
set pastetoggle=<F2>


"YCM
"let g:ycm_autoclose_preview_window_after_completion=1
"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
"let g:ycm_server_use_vim_stdout=1
"let g:ycm_server_log_level='debug'
"let g:ycm_semantic_triggers =  {
  "\   'c' : ['->', '.'],
  "\   'objc' : ['->', '.'],
  "\   'cpp,objcpp' : ['->', '.', '::'],
  "\   'perl' : ['->'],
  "\   'php' : ['->', '::'],
  "\   'cs,java,javascript,d,vim,ruby,python,perl6,scala,vb,elixir,go' : ['.'],
  "\   'lua' : ['.', ':'],
  "\   'erlang' : [':'],
  "\ }


"Set font
if has("gui_running")
  if has("gui_gtk2")
    "set guifont=Inconsolata\ 14
    set guifont=Monaco\ 14
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif


augroup jsbeautify
    autocmd!
    "For js-beautify
    autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
    " for html
    autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
    " for css or scss
    autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

    autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
    autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
    autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
augroup END

augroup golang
    autocmd!
    autocmd FileType go nmap <leader>r :GoRun<cr>
augroup END
"For Easy-Motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" Learnig Vim Script the hard way
" mapping
inoremap <c-u> <esc>viwUi
nnoremap <leader>u viwU
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>
inoremap jk <esc>
"inoremap <esc> <nop>
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>

" abbreviation
iabbrev teh the
iabbrev prinft printf
iabbrev @@ yleemj@gmail.com
iabbrev ccopy Copyright 2014 Yuanyuan Li, all rights reserved

" autocmd
augroup file_group
    autocmd!
    autocmd BufNewFile,BufRead *.html setlocal nowrap
    autocmd BufWritePre,BufRead *.html :normal gg=G
    autocmd FileType python :iabbrev <buffer> iff if:<left>
    autocmd FileType javascript :iabbrev <buffer> iff if ()<left>
    autocmd FileType mkd :onoremap ih:<c-u>execute "normal! ?^==\+$\r:nohlsearch\rkvg_\r"
augroup END

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}


"For neocomplete
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
