return {
    "rmagatti/auto-session",
    cmd = { "SessionRestore", "SessionSave", "SessionDelete", "SessionPurgeOrphaned", "SessionSearch" },
    init = function()
        -- Set keybindings before the plugin is loaded
        local keymap = vim.keymap.set
        local opts = { noremap = true, silent = true, desc = "Session Management" }

        keymap("n", "<leader>wsr", "<cmd>SessionRestore<CR>", { desc = "[W]orkspace [S]ession [R]estore" })
        keymap("n", "<leader>wss", "<cmd>SessionSave<CR>", { desc = "[W]orkspace [S]ession [S]ave" })
        keymap("n", "<leader>wsd", "<cmd>SessionDelete<CR>", { desc = "[W]orkspace [S]ession [D]elete" })
        keymap("n", "<leader>wso", "<cmd>SessionPurgeOrphaned<CR>", { desc = "[W]orkspace [S]ession Delete [O]rphaned" })
        keymap("n", "<leader>fm", "<cmd>SessionSearch<CR>", { desc = "[F]ind [M]y Sessions" })
    end,
    config = function()
        require("auto-session").setup({
            auto_restore_enabled = false,
            auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
        })
    end,
}
