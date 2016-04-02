"|----------| Pref |----------| 
set relativenumber
set number
colorscheme distinguished
syntax enable
set guioptions+=b
set tabstop=4
set softtabstop=4
set expandtab
set showcmd
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set ignorecase
set guioptions -=m
set guioptions -=T
set nowrap
set laststatus=2
execute pathogen#infect()
filetype plugin indent on

"|----------| Rmap |----------|
let mapleader = ","
inoremap jk <esc>
noremap <C-J> <C-W>j<C-W>
noremap <C-K> <C-W>k<C-W>
noremap <C-L> <C-W>l
noremap <C-H> <C-W>h
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>rv :source $MYVIMRC<cr>
nnoremap <leader>st :Startify<cr>
nnoremap <leader>nt :NERDTreeToggle<cr>
nnoremap <leader>ex :q<cr>
nnoremap <leader>hs :split<cr>
nnoremap <leader>vs :vsplit<cr>
nnoremap <leader>tag :CtrlPTag<cr>
nnoremap <leader>tb :TagbarToggle<cr>

"|----------| Abrv |----------| 
iabbrev --- "\|----------\| AWORD \|----------\|

"|----------| NCMP |----------|
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
set completeopt-=preview
