return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]], -- Map Ctrl-\ to toggle terminal
      shade_terminals = true,
      direction = "horizontal", -- 'float', 'horizontal' or 'vertical'
    })
  end,
}
