return {
  name = "Compile with clang",
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
}
