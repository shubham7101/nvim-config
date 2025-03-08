-- Variable to track the current theme
local current_theme = "catppuccin"

-- Define functions
local function ChangeTheme(theme)
    if current_theme == theme then
        print("Theme is already set to: " .. theme)
        return
    end

    local success, err = pcall(function()
        vim.cmd("colorscheme " .. theme)
    end) -- Apply theme
    if success then
        current_theme = theme -- Update current theme
        print("Theme changed to: " .. theme)
    else
        print("Error setting theme: " .. err)
    end
end

local function SelectTheme()
    local themes = { "catppuccin" }
    vim.ui.select(themes, {
        prompt = string.format("Select Theme (Current: %s)", current_theme)
    }, function(choice)
        if choice then ChangeTheme(choice) end
    end)
end

-- Define keymaps
vim.keymap.set("n", "<leader>otc", SelectTheme, { desc = "[O]ption [T]heme [C]hange" })

-- Return plugins
return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        lazy = false, -- Load eagerly
        config = function()
            require("catppuccin").setup {
                no_italic = true,
            }

            vim.cmd("colorscheme catppuccin")
        end,
    },
    -- {
    --     "folke/tokyonight.nvim",
    --     name = "tokyonight",
    --     -- priority = 1000,
    --     lazy = true,
    --     config = function()
    --         ---@diagnostic disable-next-line: missing-fields
    --         require('tokyonight').setup {
    --             styles = {
    --                 comments = { italic = false },
    --             },
    --         }
    --     end,
    -- },
    -- {
    --     "rose-pine/neovim",
    --     name = "rose-pine",
    --     -- priority = 1000,
    --     lazy = true,
    -- },
    -- {
    --     "navarasu/onedark.nvim",
    --     name = "onedark",
    --     priority = 1000,
    --     config = function()
    --         require('onedark').setup {
    --             style = "darker",
    --             code_style = {
    --                 comments = "none",
    --             },
    --         }
    --     end,
    -- },
}
