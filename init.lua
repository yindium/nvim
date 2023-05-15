require('base')
require('highlights')
require('keymaps')
require('plugins')
local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac then
  vim.opt.clipboard:append { 'unnamedplus' }
end
if is_win then
  vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }
end