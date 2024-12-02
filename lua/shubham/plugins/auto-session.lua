return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wsr", "<cmd>SessionRestore<CR>", { desc = "[W]orkspace [S]ession [R]estore" }) -- restore last workspace session for current directory
    keymap.set("n", "<leader>wss", "<cmd>SessionSave<CR>", { desc = "[W]orkspace [S]ession [S]ave" }) -- save workspace session for current working directory
  end,
}
