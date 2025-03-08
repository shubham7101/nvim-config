return {
  'lukas-reineke/indent-blankline.nvim',
  event = "BufReadPre",
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
  init = function()
--   vim.keymap.set("n", "<leader>oi", function()
--     if vim.g.indent_blankline_enabled then
--         vim.g.indent_blankline_enabled = false
--         -- Disable indent guides by clearing highlight groups
--         vim.cmd([[highlight clear IndentBlanklineChar]])
--         print("Indent Guides Disabled")
--     else
--         vim.g.indent_blankline_enabled = true
--         -- Reapply indent guides by reloading the plugin configuration
--         require("ibl").setup() -- Ensure the plugin is reconfigured
--         print("Indent Guides Enabled")
--     end
-- end, { desc = "[O]ption Toggle [I]ndent Guides" })
  end,
}
