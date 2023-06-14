return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    -- "github/copilot.vim",
    --
    -- cmd = { "Copilot" }
    -- this will be the github config for the plugins
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    lazy = true,
    event = "InsertEnter",
    config = function()
      require('copilot').setup({
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>"
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<M-l>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        filetypes = {
          yaml = true,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
        copilot_node_command = 'node', -- Node.js version must be > 16.x
        server_opts_overrides = {},
      })
    end,
  },
  -- {
  --   "thedenisnikulin/vim-cyberpunk",
  --   init = function()
  --     vim.cmd("colorscheme cyberpunk")
  --     vim.cmd("set termguicolors")
  --     vim.g.airline_theme = 'cyberpunk'
  --   end,
  -- },
  -- { "ayaz-amin/cyberpunk.nvim", init = function() vim.cmd("colorscheme cyberpunk") end },
  {
    "nyoom-engineering/oxocarbon.nvim"
  }
}
