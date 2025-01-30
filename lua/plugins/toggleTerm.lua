-- local opts = { buffer = 0 };

local exitTerm = function() vim.cmd ":ToggleTerm" end
local tmp = function()
  for i = 1, 5 do
    local key = "<leader>t" .. i
    local direct = { "float", "horizontal", "vertical" }
    vim.keymap.set("n", key, "<Nop>", { desc = "ToggleTerm " .. i })
    for _, mode in ipairs(direct) do
      local full_key = key .. mode:sub(1, 1) -- 例如 <leader>t1f, <leader>t1h, <leader>t1v
      vim.keymap.set(
        "n",
        full_key,
        function() vim.cmd(":ToggleTerm " .. i .. " direction=" .. mode) end,
        { noremap = true, silent = true, desc = "ToggleTerm " .. mode .. " " .. i }
      )
    end
  end
end

return {
  "akinsho/toggleterm.nvim",
  vim.keymap.set("t", "<D-esc>", exitTerm),
  tmp(),
}
