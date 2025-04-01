return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Open Git status" })

    local Fugitive = vim.api.nvim_create_augroup("Fugitive", {})

    local autocmd = vim.api.nvim_create_autocmd
    autocmd("BufWinEnter", {
      group = Fugitive,
      pattern = "*",
      callback = function()
        if vim.bo.ft ~= "fugitive" then
          return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = { buffer = bufnr, remap = false }
        vim.keymap.set("n", "<leader>p", function()
          vim.cmd.Git "push"
        end, { buffer = bufnr, remap = false, desc = "Git push" })

        -- rebase always
        vim.keymap.set("n", "<leader>P", function()
          vim.cmd.Git { "pull", "--rebase" }
        end, { buffer = bufnr, remap = false, desc = "Git pull with rebase" })

        -- NOTE: It allows me to easily set the branch i am pushing and any tracking
        -- needed if i did not set the branch up correctly
        vim.keymap.set(
          "n",
          "<leader>t",
          ":Git push -u origin ",
          { buffer = bufnr, remap = false, desc = "Git push with upstream tracking" }
        )
      end,
    })

    vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>", { desc = "Get diff from left side (//2) during merge conflict" })
    vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>", { desc = "Get diff from right side (//3) during merge conflict" })
  end,
}
