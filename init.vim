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
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/clangd/coc-clangd'
Plug 'https://github.com/darrikonn/vim-gofmt', { 'do': ':GoUpdateBinaries' }
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/fannheyward/telescope-coc.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/dasupradyumna/midnight.nvim'
call plug#end()

" Text editor color.
colorscheme midnight

" Exit.
nmap <F9> :q<CR>

" WINDOW
" This adjust the width of pane to the right.
" This is for the Ctrl + w<
nmap <F8> <c-w><

" WINDOW
" This adjust the width of the pane to the left.
" This is for the Ctrl + w>
nmap <F7> <c-w>>

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

" NERDTREE
" Toggle the nerdtree.
nnoremap <C-t> :NERDTreeToggle<CR>

" TELESCOPE
" Find the files.
" Equivalent to \ff
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" DEFINITION
" Use <space>-d to show the definition.
nnoremap <silent><nowait> <space>d :call CocAction('jumpDefinition', v:false)<CR>

" FORMATTING
" Auto import on save.
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

" TAB
" Use <tab> to trigger completion and navigate to the next complete item.
 function! CheckBackspace() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

" COC
" Support for tab.
inoremap <silent><expr> <Tab>
     \ coc#pum#visible() ? coc#pum#next(1) :
     \ CheckBackspace() ? "\<Tab>" :
     \ coc#refresh()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" Disable matching parenthesis highlighting.
let g:loaded_matchparen=1

" This is for the telescope setup.
lua << EOF
require("telescope").setup({
  extensions = {
    coc = {
        theme = 'ivy',
        prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
    }
  },
})
require('telescope').load_extension('coc')
EOF

