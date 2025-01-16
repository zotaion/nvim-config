-- return {
--     -- Shortened Github Url
--     "Mofiqul/dracula.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         local dracula = require("dracula")
--         dracula.setup({
--             -- customize dracula color palette
--             colors = {
--                 bg = "#282A36",
--                 fg = "#F8F8F2",
--                 selection = "#44475A",
--                 comment = "#6272A4",
--                 red = "#FF5555",
--                 orange = "#FFB86C",
--                 yellow = "#F1FA8C",
--                 green = "#50fa7b",
--                 purple = "#BD93F9",
--                 cyan = "#8BE9FD",
--                 pink = "#FF79C6",
--                 bright_red = "#FF6E6E",
--                 bright_green = "#69FF94",
--                 bright_yellow = "#FFFFA5",
--                 bright_blue = "#D6ACFF",
--                 bright_magenta = "#FF92DF",
--                 bright_cyan = "#A4FFFF",
--                 bright_white = "#FFFFFF",
--                 menu = "#21222C",
--                 visual = "#3E4452",
--                 gutter_fg = "#4B5263",
--                 nontext = "#3B4048",
--                 white = "#ABB2BF",
--                 black = "#191A21",
--             },
--             -- show the '~' characters after the end of buffers
--             show_end_of_buffer = true, -- default false
--             -- use transparent background
--             transparent_bg = true, -- default false
--             -- set custom lualine background color
--             lualine_bg_color = "#44475a", -- default nil
--             -- set italic comment
--             italic_comment = true, -- default false
--             -- overrides the default highlights with table see `:h synIDattr`
--         })
--         -- Make sure to set the color scheme when neovim loads and configures the dracula plugin
--         vim.cmd.colorscheme("dracula")
--     end,
-- }
return {
    {
        "savq/melange-nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd.colorscheme("melange")
            -- Function to toggle background
            local function toggle_background()
                if vim.o.background == "dark" then
                    vim.o.background = "light"
                    scheme = "melange_light"
                    print("Switched to light mode")
                else
                    vim.o.background = "dark"
                    scheme = "melange_dark"
                    print("Switched to dark mode")
                end


                local base64_value = vim.fn.system("echo -n " .. vim.fn.shellescape('bar') .. " | base64")
                local escape_seq = string.format("\x1b]1337;SetUserVar=%s=%s\x07", 'wtheme',
                    base64_value:match("^%s*(.-)%s*$"))
                -- vim.api.nvim_chan_send(vim.api.nvim_open_term(bufnr, {}), escape_seq)

                vim.fn.system("printf '\\033]1337;SetUserVar=wtheme=%s\\007' $(echo -n 'bar' | base64)")
            end
            -- Map the function to a key (e.g., <leader>b)
            vim.keymap.set('n', '<leader>b', toggle_background,
                { noremap = true, silent = true, desc = "Toggle Background" })

        vim.keymap.set('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
        end
    }
}
-- return {
--     "rebelot/kanagawa.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         vim.cmd.colorscheme("kanagawa")
--     end
-- }
