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

local tabTerm =  function()
  local terminal_tab = nil
  local term_count = 1

  vim.keymap.set("n", "<leader>tt", function()
    -- 檢查 terminal tab 是否存在
    if not terminal_tab or not vim.api.nvim_tabpage_is_valid(terminal_tab) then
      -- 如果不存在，就建立一個 tab，並紀錄它
      vim.cmd("ToggleTerm direction=tab")
      term_count = term_count + 1
      vim.cmd("ToggleTerm" .. term_count .. "direction=horizontal")
      terminal_tab = vim.api.nvim_get_current_tabpage()
    else
      -- 如果存在，切換到該 tab
      vim.api.nvim_set_current_tabpage(terminal_tab)
      term_count = term_count + 1
      vim.cmd("ToggleTerm" .. term_count .. "direction=horizontal")
    end

    -- 使用 toggleterm 開啟新的 terminal

    -- term_count = term_count + 1
  end, { desc = "Open or toggle terminal in terminal tab" })
end

return {
  "akinsho/toggleterm.nvim",
  vim.keymap.set("t", "<D-esc>", exitTerm),
  tmp(),
  tabTerm(),
}
