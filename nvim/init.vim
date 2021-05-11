set number
let mapleader = ","
set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin()
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'lifepillar/vim-solarized8'
Plug 'preservim/nerdtree'
Plug 'mitsuhiko/vim-jinja'
Plug 'saltstack/salt-vim'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

nnoremap <C-k>b :NERDTreeToggle<CR>

nnoremap <C-P> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>nh :noh<CR>
nnoremap <leader>pi :PlugInstall<CR>

set background=dark
colorscheme solarized8
