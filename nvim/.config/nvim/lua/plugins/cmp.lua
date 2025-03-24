return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = { "hrsh7th/cmp-buffer", "hrsh7th/cmp-path", "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local cmp = require "cmp"

    cmp.setup {
      sources = cmp.config.sources {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
      },
      mapping = cmp.mapping.preset.insert {
        ["<Tab>"] = cmp.mapping.select_next_item(), -- Complete with tab
        ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- Select previous item
        ["<CR>"] = cmp.mapping.confirm { select = true }, -- Confirm completion with enter
        ["<C-Esc>"] = cmp.mapping.close(), -- Close completion with Ctrl-esc
        ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion menu with Ctrl-Space
      },
      formatting = {
        format = function(entry, vim_item)
          vim_item.menu = ({
            nvim_lsp = "[LSP]",
            buffer = "[Buffer]",
            path = "[Path]",
            copilot = "[Copilot]",
          })[entry.source.name]
          return vim_item
        end,
      },
    }
  end,
}
