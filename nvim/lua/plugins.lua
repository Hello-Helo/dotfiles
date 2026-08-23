-- Importing plugins
require("lazy").setup({

  -- Color scheme
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,

    -- Startup function
    config = function()
      require("everforest").setup({
        background = "hard",
      })
      require("everforest").load()
    end,
  },

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    options = {
      theme="everforest",
      section_separators = '|',
      component_separators = '|',
    },

    -- Startup function
    config = function()
      require('lualine').setup({})
    end,
  },

  -- File browser
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },

  -- LSP configuration
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },

    -- Startup function
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()

      -- Load each server automatically
      require("mason-lspconfig").setup_handlers {
        function (server_name)
          require("lspconfig")[server_name].setup {
            capabilities = require('cmp_nvim_lsp').default_capabilities()
          }
        end,
      }

      require("lspconfig").ltex.setup({
        settings = {
          ltex = {
            languageToolOrg = {
              username = 'heloisalbento@gmail.com',
              apiKey = 'pit-W99jRpOX9ds3',
            },
            enabled = { "latex",
                        "typst",
                        "typ",
                        "bib",
                        -- "markdown",
                        "plaintex",
                        "tex" },
            languageToolHttpServerUri = 'https://api.languagetoolplus.com/v2',
            checkFrequency = 'save',
            language = { 'en-US'},
            additionalRules = {
              enablePickyRules = true,
            },
          },
        },
        filetypes = { 'text', 'tex', 'gitcommit' },
        flags = { debounce_text_changes = 300 },
      })

      vim.diagnostic.config({  -- https://neovim.io/doc/user/diagnostic.html
        virtual_text = false,
        underline = true,
        signs = {
          true,
          text = {
            [vim.diagnostic.severity.ERROR] = '󰝤',
            [vim.diagnostic.severity.WARN] = '󰝤',
            [vim.diagnostic.severity.INFO] = '󰝤',
            [vim.diagnostic.severity.HINT] = '󰝤',
          },
        },
      })
    end,
  },

  -- LTeX extra
  {
    "barreiroleo/ltex_extra.nvim",
    branch = "dev",
    ft = { "markdown", "tex" },
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("ltex_extra").setup {
        load_langs = { 'en-US', 'pt-BR'},
        path = "/home/hellohelo/.config/nvim/ltex",
        }
    end
  },

  -- Auto completion
  {
    "hrsh7th/nvim-cmp",
    lazy = true,
    event = 'InsertEnter',
    dependencies = {
  	  'neovim/nvim-lspconfig',
  	  'hrsh7th/cmp-nvim-lsp',
  	  'hrsh7th/cmp-path',
  	  'f3fora/cmp-spell',
  	  {'quangnguyen30192/cmp-nvim-ultisnips',
  		  dependencies = {'SirVer/ultisnips'},
  	  },
    },

    -- Initialization script
    config = function()

      -- Define some variables
      local cmp = require('cmp')

      -- Configuring auto completion
      cmp.setup({

        -- Set auto completion sources
        sources = cmp.config.sources(
        {
          { name = 'ultisnips' },
          { name = 'nvim_lsp' },
          { name = 'path' },
        }),

        -- Set window style
        window = {
          documentation = cmp.config.window.bordered()
        },

        -- Set the elements of an item
        formatting = {
          fields = {'menu', 'abbr', 'kind'}
        },

        -- Some keybindings
        mapping = cmp.mapping.preset.insert({
          ['<A-Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end,
          ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end,
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
        }),
        completion = {
          keyword_length = 1,
          completeopt = "menu,noselect"
        },
        view = { entries = 'custom', },
      })
    end,
  },

  -- LaTeX utilities
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_compiler_engine = 'lualatex'
      vim.g.tex_flavor='latex'
      vim.g.vimtex_quickfix_mode=0
      vim.g.vimtex_view_method = "zathura"
    end
  },

  -- Better commentary commands
  {
    "tpope/vim-commentary"
  },

  -- Snippets
  {
    "SirVer/ultisnips",
    init = function()
      vim.g.UltiSnipExpandTrigger="<tab>"
      vim.g.UltiSnipsJumpForwardTrigger="<tab>"
      vim.g.UltiSnipsJumpBackwardTrigger="<s-tab>"
      vim.g.UltiSnipsEditSplit="vertical"
    end
  },

  -- Autolist
  {
    "gaoDean/autolist.nvim",
    ft = {
      "markdown",
    },
    config = function()
      require("autolist").setup()

      vim.keymap.set("i", "<tab>", "<cmd>AutolistTab<cr>")
      vim.keymap.set("i", "<s-tab>", "<cmd>AutolistShiftTab<cr>")
      -- vim.keymap.set("i", "<c-t>", "<c-t><cmd>AutolistRecalculate<cr>") -- an example of using <c-t> to indent
      vim.keymap.set("i", "<CR>", "<CR><cmd>AutolistNewBullet<cr>")
      vim.keymap.set("n", "o", "o<cmd>AutolistNewBullet<cr>")
      vim.keymap.set("n", "O", "O<cmd>AutolistNewBulletBefore<cr>")
      vim.keymap.set("n", "<CR>", "<cmd>AutolistToggleCheckbox<cr><CR>")
      vim.keymap.set("n", "<C-r>", "<cmd>AutolistRecalculate<cr>")

      -- cycle list types with dot-repeat
      vim.keymap.set("n", "<leader>cn", require("autolist").cycle_next_dr, { expr = true })
      vim.keymap.set("n", "<leader>cp", require("autolist").cycle_prev_dr, { expr = true })

      -- if you don't want dot-repeat
      -- vim.keymap.set("n", "<leader>cn", "<cmd>AutolistCycleNext<cr>")
      -- vim.keymap.set("n", "<leader>cp", "<cmd>AutolistCycleNext<cr>")

      -- functions to recalculate list on edit
      vim.keymap.set("n", ">>", ">><cmd>AutolistRecalculate<cr>")
      vim.keymap.set("n", "<<", "<<<cmd>AutolistRecalculate<cr>")
      vim.keymap.set("n", "dd", "dd<cmd>AutolistRecalculate<cr>")
      vim.keymap.set("v", "d", "d<cmd>AutolistRecalculate<cr>")
    end,
  }
})
