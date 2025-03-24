return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup {
      defaults = {
        file_ignore_patterns = {
          "node_modules/.*",
          "secret.d/.*",
          "%.pem",
          ".DS_Store",
        },
        prompt_prefix = "❯ ",
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
        },
      },
    }

    require("telescope").load_extension "fzf"
    require("telescope").load_extension "file_browser"
  end,
}
