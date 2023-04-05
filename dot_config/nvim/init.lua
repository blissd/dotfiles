# See lazyvim at https://github.com/folke/lazy.nvim

local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  -- You can "comment out" the line below after lazy.nvim is installed
  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
  ---
  -- List of plugins
  ---
	{'romainl/flattened'},
	{'nvim-lualine/lualine.nvim'},
})

require('lualine').setup()

-- Config inspired by https://vonheikemen.github.io/devlog/tools/build-your-first-lua-config-for-neovim/

-- Enable line numbers in gutter
vim.opt.number = true

-- Neovim (and Vim) can let you use the mouse for some things, like select text
-- or change the size of window. mouse expects a data type called a string
-- (a piece of text wrapped in quotes) with a combination of modes. We are not going
-- to worry about those modes now, we can just enable it for every mode.
vim.opt.mouse = 'a'

-- With this we can tell Neovim to ignore uppercase letters when executing a search.
-- For example, if we search the word two the results can contain any variations like Two, tWo or two.
vim.opt.ignorecase = true

-- Makes our search ignore uppercase letters unless the search term has an uppercase letter.
-- Most of the time this is used in combination with ignorecase.
vim.opt.smartcase = true

-- Highlights the results of the previous search. It can get annoying really fast, this is how we disable it.
vim.opt.hlsearch = false

-- Makes the text of long lines always visible. Long lines are those that exceed the width of the screen.
-- The default value is true.
vim.opt.wrap = true

-- Preserve the indentation of a virtual line. These "virtual lines" are the
-- ones only visible when wrap is enabled.
vim.opt.breakindent = true

-- The amount of space on screen a Tab character can occupy. The default value is 8. I think 2 is fine.
vim.opt.tabstop = 2

-- Amount of characters Neovim will use to indent a line.
-- This option influences the keybindings << and >>.
-- The default value is 8. Most of the time we want to set this with same value as tabstop.
vim.opt.shiftwidth = 2

-- Controls whether or not Neovim should transform a Tab character to spaces. The default value is false.
vim.opt.expandtab = false

vim.g.mapleader = ' '

-- Enable proper colours
vim.opt.termguicolors = true
vim.cmd.colorscheme('flattened_dark')

