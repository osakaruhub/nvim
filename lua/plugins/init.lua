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
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        background_colour = "#000000",
      })
    end,
  },
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
  },
  {
    "mfussenegger/nvim-jdtls",
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "configs.rust-tools"
    end,
    config = function (_, opts)
      require('rust-tools').setup(opts)
    end
  },
  { -- feline (statusbar)
    'feline-nvim/feline.nvim',
    config = function()
      require('feline').setup()
    end,
  },
  {
    'SmiteshP/nvim-navic',
    dependencies = "neovim/nvim-lspconfig"
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        signature = {
          enabled = false,
        },
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    'matbme/JABS.nvim',
    config = function ()
      require("jabs").setup {}
    end
  },
  { -- learn vim-movements
    'ThePrimeagen/vim-be-good',
    event = "VeryLazy"
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    cmd = { "TodoQuickFix" },
    keys = {
      { "<Leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in Telescope" },
    },
  },
  { -- project management
    'ahmedkhalf/project.nvim',
    config = function()
      require("project_nvim").setup {
      }
    end,
    event = "VeryLazy",
  },
  {
    'nvim-telescope/telescope-project.nvim',
  },
  { -- tagbar
    'majutsushi/tagbar',
    event = "VimEnter",
  },
  -- { -- transparent.nvim
  --   'xiyaowong/transparent.nvim',
  --   config = function()
  --     require("transparent").setup({ -- Optional, you don't have to run setup.
  --       groups = { -- table: default groups
  --         'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
  --         'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
  --         'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
  --         'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
  --         'EndOfBuffer',
  --       },
  --       extra_groups = { 'NvimTreeNormal', }, -- table: additional groups that should be cleared
  --       exclude_groups = { 'NormalFloat', }, -- table: groups you don't want to clear
  --     })
  --   end,
  --   event = "VimEnter",
  -- },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
  -- {
  --    "nvim-java/nvim-java",
  --    lazy = false,
  --    dependencies = {
  --      "nvim-java/lua-async-await",
  --      "nvim-java/nvim-java-core",
  --      "nvim-java/nvim-java-test",
  --      "nvim-java/nvim-java-dap",
  --      "MunifTanjim/nui.nvim",
  --      "neovim/nvim-lspconfig",
  --      "mfussenegger/nvim-dap",
  --      {
  --        "williamboman/mason.nvim",
  --        opts = {
  --          registries = {
  --            "github:nvim-java/mason-registry",
  --            "github:mason-org/mason-registry",
  --          },
  --        },
  --      },
  --    },
  --    config = function()
  --      require("java").setup {}
  --      require("lspconfig").jdtls.setup {
  --        on_attach = require("plugins.configs.lspconfig").on_attach,
  --        capabilities = require("plugins.configs.lspconfig").capabilities,
  --        filetypes = { "java" },
  --      }
  --    end,
  --  },
}
