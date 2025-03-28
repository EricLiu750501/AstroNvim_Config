return {
  vim.keymap.set("i", "<D-Right>", "<ESC>$a", { noremap = true, silent = true, desc = "Move to nonspace End of line" }),
  vim.keymap.set(
    "i",
    "<D-Left>",
    "<ESC>^i",
    { noremap = true, silent = true, desc = "Move to nonspace Start of line" }
  ),
  -- vim.keymap.set("i", "<D-s>", "<ESC>:w<CR>a", { noremap = true, silent = true }),
  vim.keymap.set("i", "<S-tab>", "<ESC><<", { noremap = true, silent = true }),

  vim.keymap.set("n", "<D-Right>", "g_", { noremap = true, silent = true }),
  vim.keymap.set("n", "<D-Left>", "^", { noremap = true, silent = true }),
  vim.keymap.set("n", "<D-/>", "gcc", { noremap = false, silent = true }),
  vim.keymap.set("n", "<D-s>", "<ESC>:w<CR>", { noremap = true, silent = true }),
  vim.keymap.set("n", "<D-a>", "gg0vG$", { noremap = false, silent = true }),
  vim.keymap.set("n", "<S-tab>", "<<", { noremap = true, silent = true }),
  vim.keymap.set("n", "<tab>", ">>", { noremap = true, silent = true }),

  -- vim.keymap.set("v", "")
}
