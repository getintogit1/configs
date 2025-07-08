-- plugins/init.lua
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
    -- this one is for autocompletion of for example shebank or if name = main in python 
    {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
    dependencies = { "rafamadriz/friendly-snippets" },
  },

  -- this one is for UI and theme
 "nvim-lua/plenary.nvim",

 {
   "nvchad/ui",
    config = function()
      require "nvchad" 
    end
 },
{
  "FelipeLema/cmp-async-path", -- ✅ use GitHub
  lazy = true,
},
  -- https://github.com/nvzone/floaterm
  {
    "nvzone/floaterm",
     dependencies = {
    { "nvzone/volt", lazy = false }
    },
    version = "0.11",
    cmd = "FloatermToggle",
    opts =  {
    border = false,
    size = { h = 60, w = 70 },

    -- to use, make this func(buf)
    mappings = { sidebar = nil, term = nil},

    -- Default sets of terminals you'd like to open
    shell = "usr/bin/bash",
    terminals = {
    { name = "Terminal", cmd = "bash" },
    { name = "Info", cmd = "neofetch" },    },
    }  
},

 {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
 },


  {
  "nvimtools/none-ls.nvim",
  ft = { "python" },
  config = function()
    require("null-ls").setup({
      sources = {
        require("null-ls").builtins.diagnostics.mypy.with({
          extra_args = { "--ignore-missing-imports" },
        }),


        require("null-ls").builtins.formatting.black.with({
            extra_args = { "--ignore-missing-imports" },
        }),

      },
    })
  end,
},  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "mypy",
        "ruff",
        "pyright",
        "jdtls"
      },
    },
  },


  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
