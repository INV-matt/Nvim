vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])


return require("packer").startup(function(use)

  use "wbthomason/packer.nvim"

  use "nvim-lua/plenary.nvim"
  use "nvim-tree/nvim-web-devicons"

  use({"folke/tokyonight.nvim",
    config = function()
      vim.cmd("colorscheme tokyonight-night")
    end
  })
  
  use {
    "nvim-telescope/telescope.nvim", branch = "0.1.x",
    requires = { 
      {"nvim-lua/plenary.nvim"},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    }
  }

  use "theprimeagen/harpoon"
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
  use "mbbill/undotree"
  use "tpope/vim-fugitive"
 
  use {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    requires = {
        -- LSP Support
        {"neovim/nvim-lspconfig"},             -- Required
        {                                      -- Optional
        "williamboman/mason.nvim",
        run = function()
          pcall(vim.cmd, "MasonUpdate")
        end,
      },
      {"williamboman/mason-lspconfig.nvim"}, -- Optional

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},     -- Required
      {"hrsh7th/cmp-nvim-lsp"}, -- Required
      {"L3MON4D3/LuaSnip"},     -- Required
    }
  }

  use "lervag/vimtex"
  use "elkowar/yuck.vim"
  use "Fymyte/rasi.vim"

  use "szw/vim-maximizer"
  use "tpope/vim-surround"
  use "nvim-tree/nvim-tree.lua"
  use "nvim-lualine/lualine.nvim"
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"
  use "lewis6991/gitsigns.nvim"
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons", -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  })
  use "lukas-reineke/indent-blankline.nvim"
  use "norcalli/nvim-colorizer.lua"

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

end)
