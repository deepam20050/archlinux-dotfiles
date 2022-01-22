set number
set autoindent
set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set expandtab
set mouse=a
set clipboard+=unnamedplus
set nowrap
set relativenumber
set cursorline
set termguicolors
set noswapfile
set nocompatible 
set incsearch

call plug#begin()

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'tanvirtin/monokai.nvim'

call plug#end()

" keybindings for { completion
" jk for escape
" ctrl-a to select all
" <leader>d deletes but not cuts
inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}
map <C-a> <esc>ggVG<CR>
nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP

colorscheme monokai_pro 

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

autocmd filetype cpp nnoremap <F12> :w <bar> exec '!time g++ -std=gnu++17 '.shellescape('%').' && mv a.out ~/Desktop/karma '<CR>
autocmd filetype cpp nnoremap <F11> :w <bar> exec '!time g++ -std=gnu++17 -Wshadow -Wall -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG '.shellescape('%').' && mv a.out ~/Desktop/karma '<CR>
