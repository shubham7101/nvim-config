require 'shubham.core.options' -- Load general options
require 'shubham.core.keymaps' -- Load general keymaps
require 'shubham.core.snippets' -- Custom code snippets

-- Set up the Lazy plugin manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Set up plugins
require('lazy').setup {
    require 'shubham.plugins.alpha',
    require 'shubham.plugins.auto-session',
    require 'shubham.plugins.bufferline',
    require 'shubham.plugins.cmp',
    require 'shubham.plugins.colortheme',
    require 'shubham.plugins.formatting',
    require 'shubham.plugins.gitsigns',
    require 'shubham.plugins.indent-blankline',
    require 'shubham.plugins.lspconfig',
    require 'shubham.plugins.lualine',
    require 'shubham.plugins.mini',
    require 'shubham.plugins.neo-tree',
    require 'shubham.plugins.telescope',
    require 'shubham.plugins.treesitter',
    require 'shubham.plugins.which',

    require 'shubham.plugins.misc',
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
