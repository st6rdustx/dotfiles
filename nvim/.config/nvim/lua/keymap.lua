local keymap = function(tbl)
  local opts = { noremap = true, silent = true }
  local mode = tbl["mode"]
  tbl["mode"] = nil
  local bufnr = tbl["bufnr"]
  tbl["bufnr"] = nil

  for k, v in pairs(tbl) do
    if tonumber(k) == nil then
      opts[k] = v
    end
  end

  if bufnr ~= nil then
    vim.api.nvim_buf_set_keymap(bufnr, mode, tbl[1], tbl[2], opts)
  else
    vim.api.nvim_set_keymap(mode, tbl[1], tbl[2], opts)
  end
end

nmap = function(tbl)
  tbl["mode"] = "n"
  keymap(tbl)
end

imap = function(tbl)
  tbl["mode"] = "i"
  keymap(tbl)
end

vmap = function(tbl)
  tbl["mode"] = "v"
  keymap(tbl)
end

-- keymaps
nmap {
  "<leader>fb",
  "<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top<CR>",
  desc = "Fuzzy find in current buffer",
}
nmap { "<leader>ff", "<cmd>Telescope live_grep<CR>", desc = "Live grep search" }
nmap { "<leader>cx", "<cmd>Telescope diagnostics<cr>", desc = "Show diagnostics" }
nmap { "<leader>x", "<cmd>source %<CR>", desc = "Execute the current file" }
nmap { "<left>", "gT", desc = "Navigate to previous tab" }
nmap { "<right>", "gt", desc = "Navigate to next tab" }
nmap { "<M-,>", "<c-w>5<", desc = "Decrease window width" }
nmap { "<M-.>", "<c-w>5>", desc = "Increase window width" }
nmap { "<M-t>", "<C-W>+", desc = "Increase window height" }
nmap { "<M-s>", "<C-W>-", desc = "Decrease window height" }
nmap { "<leader>zig", "<cmd>LspRestart<CR>", desc = "Restart LSP" }
nmap { "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Go to definition" }
vmap { "<leader>p", [["_dP]], desc = "Paste over selected text" }
