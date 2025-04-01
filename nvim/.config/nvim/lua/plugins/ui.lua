return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup {
        flavour = "mocha", -- Options: latte, frappe, macchiato, mocha
        term_colors = true,
        transparent_background = false,
        integrations = {
          cmp = true,
          gitsigns = true,
          telescope = true,
          treesitter = true,
        },
      }
      vim.cmd.colorscheme "catppuccin"
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup()
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
        window = {
          border = "rounded",
          padding = { 2, 2, 2, 2 },
        },
      }
    end,
  },
}
