-- return { -- override blink.cmp plugin
--   "Saghen/blink.cmp",
--   opts = {
--     sources = {
--       default = { 'lsp', 'buffer', 'snippets', 'path', "copilot" },
--       providers = {
--         path = { score_offset = 3 },
--         lsp = { score_offset = 0 },
--         copilot = {
--             name = "copilot",
--             module = "blink-cmp-copilot",
--             score_offset = -1,
--             async = true,
--           },
--         snippets = { score_offset = -2 },
--         buffer = { score_offset = -3 },
--       },
--     },
--   },
-- }
--
--
return {
    "saghen/blink.cmp",
    dependencies = {
      {
        "giuxtaposition/blink-cmp-copilot",
      },
    },
    opts = {
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "copilot" },
        providers = {
          copilot = {
            name = "copilot",
            module = "blink-cmp-copilot",
            score_offset = 100,
            async = true,
          },
        },
      },
    },
  }
