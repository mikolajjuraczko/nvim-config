local colorscheme = 'gruvbox'

require('gruvbox').setup({ contrast = 'hard' })

local status_ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not status_ok then
  return
end
