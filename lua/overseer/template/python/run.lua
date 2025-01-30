return {
  name = "Run python",
  condition = {
    filetype = { "python" },
  },
  builder = function()
    return {
      name = vim.fn.expand "%:t",
      cmd = { "python3" },
      cwd = vim.fn.expand "%:p:h",
      args = { vim.fn.expand "%:p" },
      components = {
        "task_list_on_start",
        "display_duration",
        "on_exit_set_status",
        "on_complete_notify",
      },
    }
  end,
  post_process = function(task)
    -- 執行 Python 程式後切換 overseer 任務顯示
    vim.defer_fn(function()
      vim.cmd("silent !python3 " .. vim.fn.expand "%")
      -- 切換 overseer 任務顯示
      require("overseer").toggle()
    end, 500)
  end,
}
