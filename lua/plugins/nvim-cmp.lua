return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- Fuente para LSP
      "hrsh7th/cmp-buffer", -- Fuente para el buffer actual
      "hrsh7th/cmp-path", -- Fuente para autocompletado de rutas
      "hrsh7th/cmp-cmdline", -- Fuente para autocompletado en la línea de comandos
      "L3MON4D3/LuaSnip", -- Motor de snippets
      "saadparwaiz1/cmp_luasnip", -- Integración de cmp con LuaSnip
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body) -- Usa LuaSnip como motor de snippets
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
          ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Aceptar la sugerencia
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" }, -- Para los snippets
          { name = "buffer" },
          { name = "path" },
        }),
      })

      cmp.setup.cmdline(":", {
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
          { name = "nvim_lsp" },
        }),
      })
    end,
  },
}
