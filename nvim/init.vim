:set number
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set expandtab
:set mouse=a
:set clipboard+=unnamedplus
:set nowrap
:set relativenumber
:set cursorline
:set termguicolors
:set noswapfile

call plug#begin()

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'https://github.com/SirVer/ultisnips' " snippets
Plug 'tanvirtin/monokai.nvim'

call plug#end()

" keybindings for { completion
" jk for escape
" ctrl-a to select all
inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}
imap jk         <Esc>
map <C-a> <esc>ggVG<CR>

colorscheme monokai_pro
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

autocmd filetype cpp nnoremap <F12> :w <bar> exec '!time g++ -std=gnu++17 '.shellescape('%').' && mv a.out ~/Desktop/karma '<CR>

