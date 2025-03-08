return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>cf',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[C]ode [F]ormat',
    },
  },
  config = function()
    local conform = require("conform")

    conform.setup({
      notify_on_error = false,
      formatters_by_ft = {
        go = { "gofmt" },
        -- javascript = { "prettier" },
        -- typescript = { "prettier" },
        -- javascriptreact = { "prettier" },
        -- typescriptreact = { "prettier" },
        -- svelte = { "prettier" },
        ss = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        -- liquid = { "prettier" },
        -- lua = { "stylua" },
        -- python = { "isort", "black" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })

    -- vim.keymap.set({ "n", "v" }, "<leader>cf", function()
    --  conform.format({
    --    lsp_fallback = true,
    --    async = false,
    --    timeout_ms = 1000,
    --  })
    -- end, { desc = "FMT: [C]ode [F]ormat" })
  end,
}
