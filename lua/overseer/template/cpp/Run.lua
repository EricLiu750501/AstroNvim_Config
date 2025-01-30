return {
  name = "Run Clang",
  condition = {
    filetype = { "cpp" },
  },
  builder = function()
    local execute = vim.fn.expand "%:r"
    return {
      name = vim.fn.expand "%:t",
      cmd = { "./" .. execute },
      conponent = "default",
    }
  end,
}
