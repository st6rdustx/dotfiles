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

-- Basic navigation improvements
nmap { "<C-h>", "<C-w>h", desc = "Go to left window" }
nmap { "<C-j>", "<C-w>j", desc = "Go to lower window" }
nmap { "<C-k>", "<C-w>k", desc = "Go to upper window" }
nmap { "<C-l>", "<C-w>l", desc = "Go to right window" }

-- Better indenting
vmap { "<", "<gv", desc = "Indent left and reselect" }
vmap { ">", ">gv", desc = "Indent right and reselect" }

-- Move lines up/down
nmap { "<A-j>", ":m .+1<CR>==", desc = "Move line down" }
nmap { "<A-k>", ":m .-2<CR>==", desc = "Move line up" }
vmap { "<A-j>", ":m '>+1<CR>gv=gv", desc = "Move selection down" }
vmap { "<A-k>", ":m '<-2<CR>gv=gv", desc = "Move selection up" }

-- Clear search highlighting
nmap { "<leader>h", ":nohlsearch<CR>", desc = "Clear search highlighting" }

-- Better paste behavior
vmap { "<leader>p", [["_dP]], desc = "Paste over selected text" }

-- Quick save and quit
nmap { "<leader>w", ":w<CR>", desc = "Save file" }
nmap { "<leader>q", ":q<CR>", desc = "Quit" }
nmap { "<leader>Q", ":qa!<CR>", desc = "Quit all without saving" }

-- Buffer navigation
nmap { "<S-h>", ":bprevious<CR>", desc = "Previous buffer" }
nmap { "<S-l>", ":bnext<CR>", desc = "Next buffer" }
nmap { "[b", ":bprevious<CR>", desc = "Previous buffer" }
nmap { "]b", ":bnext<CR>", desc = "Next buffer" }

-- Tab navigation
nmap { "<left>", "gT", desc = "Navigate to previous tab" }
nmap { "<right>", "gt", desc = "Navigate to next tab" }
nmap { "[t", "gT", desc = "Navigate to previous tab" }
nmap { "]t", "gt", desc = "Navigate to next tab" }

-- Window resizing
nmap { "<M-,>", "<c-w>5<", desc = "Decrease window width" }
nmap { "<M-.>", "<c-w>5>", desc = "Increase window width" }
nmap { "<M-t>", "<C-W>+", desc = "Increase window height" }
nmap { "<M-s>", "<C-W>-", desc = "Decrease window height" }

-- Better window management
nmap { "<leader>sv", "<C-w>v", desc = "Split window vertically" }
nmap { "<leader>sh", "<C-w>s", desc = "Split window horizontally" }
nmap { "<leader>se", "<C-w>=", desc = "Make splits equal size" }
nmap { "<leader>sx", "<cmd>close<CR>", desc = "Close current split" }

-- Quick actions
nmap { "<leader>x", "<cmd>source %<CR>", desc = "Execute the current file" }
nmap { "<leader>zig", "<cmd>LspRestart<CR>", desc = "Restart LSP" }

-- LSP keymaps
nmap { "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", desc = "Go to definition" }
nmap { "K", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "Show hover information" }
nmap { "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", desc = "Code action" }
nmap { "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "Rename symbol" }

-- Diagnostic navigation
nmap { "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", desc = "Previous diagnostic" }
nmap { "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", desc = "Next diagnostic" }
nmap { "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", desc = "Show line diagnostics" }

-- Quick fix and location list
nmap { "[q", ":cprev<CR>", desc = "Previous quickfix" }
nmap { "]q", ":cnext<CR>", desc = "Next quickfix" }
nmap { "[l", ":lprev<CR>", desc = "Previous location list" }
nmap { "]l", ":lnext<CR>", desc = "Next location list" }

-- Terminal mode mappings
vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to left window" })
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to lower window" })
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to upper window" })
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to right window" })
vim.keymap.set("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide terminal" })
vim.keymap.set("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })

-- Increment/decrement numbers
nmap { "<leader>+", "<C-a>", desc = "Increment number" }
nmap { "<leader>-", "<C-x>", desc = "Decrement number" }

-- Stay in visual mode when indenting
vmap { "<Tab>", ">gv", desc = "Indent right and reselect" }
vmap { "<S-Tab>", "<gv", desc = "Indent left and reselect" }

-- Center screen when jumping
nmap { "<C-d>", "<C-d>zz", desc = "Scroll down and center" }
nmap { "<C-u>", "<C-u>zz", desc = "Scroll up and center" }
nmap { "n", "nzzzv", desc = "Next search result (centered)" }
nmap { "N", "Nzzzv", desc = "Previous search result (centered)" }

-- Join lines and keep cursor position
nmap { "J", "mzJ`z", desc = "Join lines and keep cursor position" }
