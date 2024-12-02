-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local function map(mode, keys, func, desc)
  vim.keymap.set(mode, keys, func, { noremap = true, silent = true, desc = desc })
end
-- For conciseness
local opts = { noremap = true, silent = true }

-- save file
map('n', '<C-s>', '<cmd> w <CR>', 'Save file')

-- save file without auto-formatting
map('n', '<leader>sn', '<cmd>noautocmd w <CR>', 'Save file without auto-formatting')

-- quit file
map('n', '<C-q>', '<cmd> q <CR>', 'Quit file')

-- delete single character without copying into register
map('n', 'x', '"_x', 'Delete single character without copying into register')

-- Vertical scroll and center
map('n', '<C-d>', '<C-d>zz', 'Scroll down and center')
map('n', '<C-u>', '<C-u>zz', 'Scroll up and center')

-- Find and center
map('n', 'n', 'nzzzv', 'Find next match and center')
map('n', 'N', 'Nzzzv', '"Find previous match and center')

-- Resize with arrows
map('n', '<Up>', ':resize -2<CR>', 'Decrease window height')
map('n', '<Down>', ':resize +2<CR>', '"Increase window height')
map('n', '<Left>', ':vertical resize -2<CR>', 'Decrease window width')
map('n', '<Right>', ':vertical resize +2<CR>', '"Increase window width')

-- Buffers
map('n', '<Tab>', ':bnext<CR>', 'Next Buffer')
map('n', '<S-Tab>', ':bprevious<CR>', 'Previous Buffer')
map('n', '<leader>xx', ':bdelete!<CR>', '[X]Close [B]uffer')
map('n', '<leader>nb', '<cmd> enew <CR>', '[N]ew [B]uffer') -- new buffer

-- Window management
map('n', '<leader>v', '<C-w>v', 'Split window vertically')
map('n', '<leader>h', '<C-w>s', 'Split window horizontally')
-- map('n', '<leader>se', '<C-w>=', 'Make Split [W]indow [E]qual width and height')
map('n', '<leader>xs', ':close<CR>', '[X]Close [S]plit window')

-- Navigate between splits
map('n', '<C-k>', ':wincmd k<CR>', 'Move focus to the upper window')
map('n', '<C-j>', ':wincmd j<CR>', 'Move focus to the lower window')
map('n', '<C-h>', ':wincmd h<CR>', 'Move focus to the left window')
map('n', '<C-l>', ':wincmd l<CR>', 'Move focus to the right window')

-- Tabs
-- vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- open new tab
-- vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close current tab
-- vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) --  go to next tab
-- vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) --  go to previous tab

-- Toggle line wrapping
map('n', '<leader>ow', '<cmd>set wrap!<CR>', '[O]ption [W]rapping')

-- Stay in indent mode
map('v', '<', '<gv', 'Decrease indent and stay in indent mode')
map('v', '>', '>gv', '"Increase indent and stay in indent mode')

-- Keep last yanked when pasting
map('v', 'p', '"_dP', 'Paste over selection without overwriting yank register')

-- Diagnostic keymaps
-- map('n', '[d', vim.diagnostic.goto_prev, 'Go to previous diagnostic message')
-- map('n', ']d', vim.diagnostic.goto_next, 'Go to next diagnostic message')
-- map('n', '<leader>d', vim.diagnostic.open_float, 'Open floating diagnostic message' })
map('n', '<leader>q', vim.diagnostic.setloclist, 'Open diagnostic [Q]uickfix list')
