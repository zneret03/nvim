return {
  {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    build = ":ToggleTerm",
    keys = {
      {
        "<F4>",
        "<cmd>ToggleTerm<cr>",
        desc = "Toggle floating terminal",
      },
      {
        "<F5>",
        "<cmd>lua _LAZYGIT_TOGGLE()<CR>",
        desc = "Lazy git floating terminal",
      },
    },

    config = function()
      require("config.toggleterm")
    end,
  },
}
