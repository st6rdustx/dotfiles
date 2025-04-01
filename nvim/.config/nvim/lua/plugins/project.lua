return {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup {
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
      detection_methods = { "pattern" },
      show_hidden = false,
    }

    -- Integrate with telescope
    require("telescope").load_extension "projects"

    -- Keymap for projects
    vim.keymap.set("n", "<leader>fp", ":Telescope projects<CR>", { silent = true, desc = "Find projects" })
  end,
}
