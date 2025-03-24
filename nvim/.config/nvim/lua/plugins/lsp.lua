return {
  { "neovim/nvim-lspconfig" },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      local mason_lspconfig = require "mason-lspconfig"

      mason_lspconfig.setup {
        ensure_installed = {
          "lua_ls",
          "bashls",
          "dockerls",
          "docker_compose_language_service",
          "jsonls",
          "ts_ls",
          "mdx_analyzer",
          "volar",
          "yamlls",
        },
      }

      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      mason_lspconfig.setup_handlers {
        function(server_name)
          require("lspconfig")[server_name].setup {
            capabilities = capabilities,
          }
        end,

        ["yamlls"] = function()
          require("lspconfig").yamlls.setup {
            capabilities = capabilities,
            settings = {
              yaml = {
                schemas = {
                  ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
                },
              },
            },
          }
        end,

        ["jsonls"] = function()
          require("lspconfig").jsonls.setup {
            capabilities = capabilities,
            settings = {
              json = {
                schemas = {
                  {
                    fileMatch = { "package.json" },
                    url = "https://json.schemastore.org/package.json",
                  },
                  {
                    fileMatch = { "tsconfig*.json" },
                    url = "https://json.schemastore.org/tsconfig.json",
                  },
                  {
                    fileMatch = { ".prettierrc.json", ".prettierrc" },
                    url = "https://json.schemastore.org/prettierrc.json",
                  },
                },
              },
            },
          }
        end,
      }
    end,
  },
}
