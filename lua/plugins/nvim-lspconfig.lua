return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local on_attach = require("util.lsp").on_attach
      local lspconfig = require("lspconfig")
      local cmp_nvim = require("cmp_nvim_lsp")

      local capabilities = cmp_nvim.default_capabilities()

      lspconfig.solidity_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "solidity" },
        root_dir = lspconfig.util.root_pattern("foundry.toml", ".git"),
      })

      local solhint = require("efmls-configs.linters.solhint")
      local prettier = require("efmls-configs.formatters.prettier")
      local stylua = require("efmls-configs.formatters.stylua")
      local luacheck = require("efmls-configs.linters.luacheck")

      lspconfig.efm.setup({
        filetypes = { "soidity", "lua" },
        init_options = {
          documentFormatting = true,
          documentRangeFormatting = true,
          hover = true,
          documentSymbol = true,
          codeAction = true,
          completion = true,
        },
        settings = {
          languages = {
            solidity = { solhint, prettier },
            lua = { luacheck, stylua },
          },
        },
      })

      lspconfig.rust_analyzer.setup({
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
              command = "clippy",
            },
          },
        },
      })
    end,
    lazy = false,
    dependencies = {
      "windwp/nvim-autopairs",
      "williamboman/mason.nvim",
      "creativenull/efmls-configs-nvim",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
    },
  },
}
