vim.g.mapleader = " " -- Set leader key before Lazy

require("jstentz.lazy_init")

-- Allows Ctrl + Shift + V for pasting / copying externally
vim.g.clipboard = {
    name = 'OSC 52',
    copy = {
	['+'] = require('vim.ui.clipboard.osc52').copy('+'),
	['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
	['+'] = function () end,
	['*'] = function () end,
    },
}
