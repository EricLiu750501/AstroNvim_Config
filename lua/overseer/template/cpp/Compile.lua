return {
  name = "Compile with clang",
  condition = {
    filetype = { "cpp" },
  },
  builder = function()
    local filepath = vim.fn.expand("%:p")  
    local output = vim.fn.expand "%:r"

    print(filepath)
    return {
      name = vim.fn.expand "%:t",
      cmd = { "clang++" },
      args = { filepath, "-o", output },
      component = "default",
    }
  end,
}
