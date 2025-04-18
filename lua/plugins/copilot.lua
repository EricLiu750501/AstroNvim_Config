return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = { enabled = false },
      suggestion = {
        enabled = false,
        auto_trigger = false, -- auto_trigger
        hide_during_completion = true,
        debounce = 75,
        keymap = {
          accept = "<D-l>",
          accept_word = false,
          accept_line = false,
          next = "<D-]>",
          prev = "<D-[>",
          dismiss = "<C-]>",
        },
      },
    })
  end,

}
