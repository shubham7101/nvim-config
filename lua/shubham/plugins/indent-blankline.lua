return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  opts = {
    indent = {
      char = '▏',
    },
    scope = {
      show_start = false,
      show_end = false,
      show_exact_scope = false,
    },
    exclude = {
      filetypes = {
        'help',
        'startify',
        'dashboard',
        'packer',
        'neogitstatus',
        'NvimTree',
        'Trouble',
      },
    },
  },

  -- Toggle Indentation Visibility
  -- vim.keymap.set('n', '<leader>oi', function()
  --   local indent_blankline = require("indent_blankline")
  --
  -- -- Toggle indent_blankline enabled status
  --   if vim.b.indent_blankline_enabled == nil or vim.b.indent_blankline_enabled then
  --     vim.b.indent_blankline_enabled = false
  --     indent_blankline.setup { enabled = false }
  --     print("Indentation Lines Disabled")
  --   else
  --     vim.b.indent_blankline_enabled = true
  --     indent_blankline.setup { enabled = true }
  --     print("Indentation Lines Enabled")
  --   end
  -- end, { desc = "[O]ption [I]ndentation lines visibility" })
}
