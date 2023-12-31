vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  requires = { {'nvim-lua/plenary.nvim'} }
}
 use({ 'talha-akram/noctis.nvim',
  as = 'noctis',
  config = function()
	vim.cmd("colorscheme noctis_bordo")
  end
  })
  use 'sigmasd/deno-nvim'

  use 'mfussenegger/nvim-dap'

  use {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
    }
  use 'theprimeagen/harpoon'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
	  }
  }
end)
