call plug#begin()

if has("nvim")


""""" """"" """"" """"" """"" """""
"syntax highlighting
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
""""" """"" """"" """"" """"" """""


""""" """"" """"" """"" """"" """""
"auto-complete and more
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'onsails/lspkind-nvim' 
""""" """"" """"" """"" """"" """""  
  
  
""""" """"" """"" """"" """"" """""
"auto-close pairs
  Plug 'cohama/lexima.vim'
""""" """"" """"" """"" """"" """""


""""" """"" """"" """"" """"" """""
" git
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
""""" """"" """"" """"" """"" """""


""""" """"" """"" """"" """"" """""
"search
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim' """ $ sudo apt-get install ripgrep
  Plug 'nvim-telescope/telescope-file-browser.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
""""" """"" """"" """"" """"" """""


""""" """"" """"" """"" """"" """""
"bottom line
  Plug 'hoob3rt/lualine.nvim'  
""""" """"" """"" """"" """"" """""


""""" """"" """"" """"" """"" """""
"themes
  Plug 'joshdick/onedark.vim'
  Plug 'tribela/vim-transparent'
""""" """"" """"" """"" """"" """""


""""" """"" """"" """"" """"" """""
"other
 Plug 'tpope/vim-eunuch'
 
 Plug 'preservim/nerdtree'
 Plug 'ryanoasis/vim-devicons'
 Plug 'Xuyuanp/nerdtree-git-plugin'

""""" """"" """"" """"" """"" """""


endif

call plug#end()
