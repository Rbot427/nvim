-- Contains default settings for vim configuration
vim.cmd.colorscheme("catppuccin")
 
-- Set the clipboard to be the system clipboard
vim.opt.clipboard = 'unnamedplus' -- use system keyboard for yank
 
vim.opt.nu = true                 -- set line numbers
 
-- set tab size to 2 spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
 
vim.opt.incsearch = true -- incremental search
 
vim.opt.termguicolors = true

vim.opt.relativenumber = false
vim.opt.number = true
vim.opt.signcolumn = "yes"

vim.opt.guicursor = {
  "n-v-c:block",       -- Normal, Visual, Command: block
  "i-ci-ve:block",     -- Insert and related modes: block (thick)
  "r-cr:hor20",        -- Replace mode: horizontal bar
  "o:hor50",           -- Operator-pending: wide horizontal
  "a:blinkon0",        -- Disable all blinking
}

-- Disable copilot auto complete
vim.g.copilot_enabled = false
