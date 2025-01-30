return {
  "stevearc/overseer.nvim",
  vim.keymap.set("n", "<leader>O", "<Nop>", { desc = "Overseer" }),
  vim.keymap.set("n", "<leader>Ot", "<cmd>OverseerToggle<CR>", { desc = "切換 Overseer UI" }),
  vim.keymap.set("n", "<leader>Or", "<cmd>OverseerRun<CR>", { desc = "執行任務" }),
  vim.keymap.set("n", "<leader>Ol", "<cmd>OverseerInfo<CR>", { desc = "查看 Overseer 任務" }),
  opts = {},
  config = function()
    require("overseer").setup {
      dap = false,
      templates = { "cpp.Compile_and_Run", "python.run" },
    }
  end,
}
