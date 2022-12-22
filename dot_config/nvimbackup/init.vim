
call plug#begin()

Plug 'projekt0n/github-nvim-theme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'glepnir/dashboard-nvim'
Plug 'andweeb/presence.nvim'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'beauwilliams/focus.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte'
"Plug 'neovim/nvim-lspconfig'
Plug 'sindrets/winshift.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'williamboman/mason.nvim'
"Plug 'williamboman/mason-lspconfig.nvim'
"Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'NLKNguyen/papercolor-theme'
Plug 'arnamak/stay-centered.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
"Plug 'glepnir/lspsaga.nvim', {'branch' : 'main'}
Plug 'L3MON4D3/LuaSnip', {'tag': 'v<CurrentMajor>.*'}
Plug 'alvan/vim-closetag'

call plug#end()

if (has("termguicolors"))
	set termguicolors

endif
syntax enable
colorscheme dracula
set number


inoremap <silent><expr> <TAB>
       \ coc#pum#visible() ? coc#pum#next(1) :
       \ CheckBackspace() ? "\<Tab>" :
       \ coc#refresh()
 
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
 
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

lua <<EOF
  local home = os.getenv('HOME')
  local db = require('dashboard')
  db.custom_center = {
      {icon = '  ',
      desc = 'Recently latest session                  ',
      shortcut = 'SPC s l',
      action ='SessionLoad'},
      {icon = '  ',
      desc = 'Recently opened files                   ',
      action =  'DashboardFindHistory',
      shortcut = 'SPC f h'},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'SPC f f'},
      {icon = '  ',
      desc ='File Browser                            ',
      action =  'Telescope file_browser',
      shortcut = 'SPC f b'},
      {icon = '  ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = 'SPC f w'},
      {icon = '  ',
      desc = 'Open Personal dotfiles                  ',
      action = 'Telescope dotfiles path=' .. home ..'/.dotfiles',
      shortcut = 'SPC f d'},
    }
EOF


let g:dashboard_custom_header = [
\ ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]
let ayucolor="light"
let mapleader=";"
set hidden
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a



nnoremap m kzz
nnoremap k jzz
nnoremap gg ggzz


"lua require("mason").setup()
"lua require("mason-lspconfig").setup()
lua require('toggleterm').setup()
lua require("focus").setup({treewidth = 20, excluded_filetypes = { 'fterm', 'term', 'toggleterm'}})

nnoremap <leader>a :FocusSplitLeft<cr>
nnoremap <leader>r :FocusSplitRight<cr>
nnoremap <leader>s :FocusSplitDown<cr>
nnoremap <leader>t :FocusSplitUp<cr>
nnoremap <leader>m :FocusMaximise<cr>

nnoremap <leader>v <cmd>CHADopen<cr>
tnoremap <Esc> <C-\><C-n>

au BufEnter * if &buftype == 'terminal' | :startinsert | end

let g:term_buf = 0
let g:term_win = 0


nnoremap <c-n> :ToggleTerm size=20<cr>

nnoremap <leader>E :source $MYVIMRC<cr>
nnoremap <leader>e :e ~/.config/nvim/init.vim<cr>
nnoremap <leader>f :FZF<cr>

nnoremap <c-A-a> <cmd>WinShift left<cr>
nnoremap <c-A-r> <cmd>WinShift right<cr>
nnoremap <c-A-s> <cmd>WinShift down<cr>
nnoremap <c-A-t> <cmd>WinShift up<CR>

