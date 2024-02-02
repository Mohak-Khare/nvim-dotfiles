require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.3',
  	requires = { {'nvim-lua/plenary.nvim'} }
	}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'terrortylor/nvim-comment'
    use 'ThePrimeagen/harpoon'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'
    use 'nvim-lualine/lualine.nvim'
    use 'jiangmiao/auto-pairs'
    use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
  },
}
end)
