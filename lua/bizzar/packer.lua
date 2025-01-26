-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
     'nvim-telescope/telescope.nvim', tag = '0.1.6',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use("nvim-treesitter/nvim-treesitter")

    use("pbrisbin/vim-colors-off")

    use("theprimeagen/harpoon")

    use("blazkowolf/gruber-darker.nvim")

    use "maxmx03/solarized.nvim"

    use {'nvim-orgmode/orgmode'}

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
          {'neovim/nvim-lspconfig'},
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'saadparwaiz1/cmp_luasnip'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-nvim-lua'},

          {'L3MON4D3/LuaSnip'},
          {'rafamadriz/friendly-snippets'},
      }
    }

    use 'AhmedAbdulrahman/aylin.vim'

    use 'aditya-azad/candle-grey'

    use 'freeo/vim-kalisi'

    use 'navarasu/onedark.nvim'

    use 'gbprod/phpactor.nvim'

    use 'nikvdp/neomux'

    use 'nyngwang/nvimgelion'

    use 'sainnhe/sonokai'

    use 'aktersnurra/no-clown-fiesta.nvim'

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    
    use 'rose-pine/neovim'
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }

    use "sho-87/kanagawa-paper.nvim"

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    use 'lervag/vimtex'

    use 'tanvirtin/monokai.nvim'

    use 'ishan9299/nvim-solarized-lua'

    use { "scottmckendry/cyberdream.nvim" }
    use ({ 'projekt0n/github-nvim-theme' })
    use "polirritmico/monokai-nightasty.nvim"

    use {
      "nvim-neorg/neorg"
    }

    use("sainnhe/gruvbox-material")
end)
