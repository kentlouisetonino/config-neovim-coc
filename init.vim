:set number
:set autoindent
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:set completeopt-=preview

call plug#begin()
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/ap/vim-css-color'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/neoclide/coc.nvim'
call plug#end()

" * Exit.
nmap<F9> :q<CR>

" * This is for the Ctrl + w<
" * This adjust the width of pane to the right.
nmap <F8> <c-w><

" * This is for the Ctrl + w>
" * This adjust the width of the pane to the left.
nmap <F7> <c-w>>

" * NERDTREE: Focus back to nerdtree navigation.
nnoremap <C-f> :NERDTreeFocus<CR>

" * NERDTREE: Toggle the nerdtree.
nnoremap <C-t> :NERDTreeToggle<CR>

" * COC: Use <space>-d to show the definition.
nnoremap <silent><nowait> <space>d :call CocAction('jumpDefinition', v:false)<CR>
" * COC: auto import on save.
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

" * COC: Use <tab> to trigger completion and navigate to the next complete item.
 function! CheckBackspace() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

" * COC: Support for tab.
inoremap <silent><expr> <Tab>
     \ coc#pum#visible() ? coc#pum#next(1) :
     \ CheckBackspace() ? "\<Tab>" :
     \ coc#refresh()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" * Disable matching parenthesis highlighting.
let g:loaded_matchparen=1
