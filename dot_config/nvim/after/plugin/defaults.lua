
local theme = vim.fn.system("~/.zshfunctions/appearance")
if theme == "light" then
  vim.opt.background ='light'
  vim.cmd.colorscheme('flattened_light')
else
  vim.opt.background = 'dark'
  vim.cmd.colorscheme('flattened_dark')
end

