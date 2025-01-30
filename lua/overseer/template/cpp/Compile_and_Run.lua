return {
  name = "Compile & Run",
  condition = {
    filetype = { "cpp" },
  },
  builder = function()
    local filename = vim.fn.expand "%:t"
    local output = vim.fn.expand "%:r"
    return {
      name = vim.fn.expand "%:t",
      cmd = { "clang++" },
      args = { filename, "-o", output },
      conponent = "default",
    }
  end,
  post_process = function(task)
    -- 編譯成功後執行程式
    vim.defer_fn(function() vim.cmd("term ./" .. vim.fn.expand "%:r") end, 500)
  end,
}
