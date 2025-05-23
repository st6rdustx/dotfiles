local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
end
vim.opt.rtp:prepend(lazypath)

vim.cmd "source ~/.vimrc"

require("lazy").setup {
  spec = {
    { import = "plugins" },
  },
  checker = { enabled = true, notify = false },
  change_detection = {
    notify = false,
  },
}

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("lazy").update { show = false }
  end,
})

require "keymap"
