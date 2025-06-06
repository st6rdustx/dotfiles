return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup {
        flavour = "mocha",
        term_colors = true,
        transparent_background = false,
        dim_inactive = {
          enabled = true,
          shade = "dark",
          percentage = 0.15,
        },
        integrations = {
          cmp = true,
          gitsigns = true,
          telescope = true,
          treesitter = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          snacks = true,
          which_key = true,
          fidget = true,
          mason = true,
          lsp_trouble = true,
          rainbow_delimiters = true,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
            inlay_hints = {
              background = true,
            },
          },
        },
        custom_highlights = function(colors)
          return {
            Comment = { fg = colors.flamingo },
            TabLineSel = { bg = colors.pink },
            CmpBorder = { fg = colors.surface2 },
            Pmenu = { bg = colors.none },
          }
        end,
      }
      vim.cmd.colorscheme "catppuccin"
    end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup {
        plugins = {
          spelling = { enabled = true },
          presets = { operators = false },
        },
        win = {
          border = "rounded",
          padding = { 2, 2, 2, 2 },
        },
      }
    end,
  },
}
