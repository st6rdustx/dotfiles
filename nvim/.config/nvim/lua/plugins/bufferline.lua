return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup {
      options = {
        diagnostics = "nvim_lsp",
        separator_style = "slope",
      },
    }

    -- Navigation keymaps
    vim.keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<CR>", { silent = true, desc = "Previous buffer" })
    vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>", { silent = true, desc = "Next buffer" })
    vim.keymap.set("n", "<leader>bc", ":bdelete<CR>", { silent = true, desc = "Close buffer" })
  end,
}
