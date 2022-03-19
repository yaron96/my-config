if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'



if has("nvim")
  
  Plug 'neovim/nvim-lspconfig'
"  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  "complection
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'onsails/lspkind-nvim'

"file search and browser
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-file-browser.nvim'
  Plug 'kyazdani42/nvim-web-devicons'

"my added

endif

call plug#end()
