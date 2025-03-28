return {
  name = "Run Clang",
  condition = {
    filetype = { "cpp" },
  },
  builder = function()
    local execute = vim.fn.expand "%:p:r"
    return {
      name = vim.fn.expand "%:t",
      cmd = { "./" .. execute },
      component = "default",
    }
  end,
}
