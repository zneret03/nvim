pcall(require, "toggleterm")

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", float = true })

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end
