return {
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = {
        icons = {
            -- set icon mappings to true if you have a Nerd Font
            mappings = vim.g.have_nerd_font,
            -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
            -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
            keys = vim.g.have_nerd_font and {} or {
                Up = '<Up> ',
                Down = '<Down> ',
                Left = '<Left> ',
                Right = '<Right> ',
                C = '<C-…> ',
                M = '<M-…> ',
                D = '<D-…> ',
                S = '<S-…> ',
                CR = '<CR> ',
                Esc = '<Esc> ',
                ScrollWheelDown = '<ScrollWheelDown> ',
                ScrollWheelUp = '<ScrollWheelUp> ',
                NL = '<NL> ',
                BS = '<BS> ',
                Space = '<Space> ',
                Tab = '<Tab> ',
                F1 = '<F1>',
                F2 = '<F2>',
                F3 = '<F3>',
                F4 = '<F4>',
                F5 = '<F5>',
                F6 = '<F6>',
                F7 = '<F7>',
                F8 = '<F8>',
                F9 = '<F9>',
                F10 = '<F10>',
                F11 = '<F11>',
                F12 = '<F12>',
            },
        },

        -- Document existing key chains
        spec = {
            { "<leader>/", group = "Comments" },
            { "<leader>c", group = "[C]ode", icon = "" },
            { "<leader>d", group = "[D]ebug", icon = "" },
            { "<leader>e", group = "[E]xplorer", icon = "󰨀" },
            { "<leader>b", group = "[B]Background", icon = "󰛩" },
            { "<leader>f", group = "[F]ind", icon = "󱩾" },
            { "<leader>g", group = "[G]it", icon = "" },
            { "<leader>J", group = "[J]ava", icon = "" },
            { "<leader>t", group = "[T]ab", icon = "" },
            { "<leader>w", group = "[W]indow", icon = "󱤗" },
            { "<leader>q", group = "[Q]uit", icon = "󰩈" },
        },
    },
    -- config = function()
    --     -- gain access to the which key plugin
    --     local which_key = require('which-key')
    --
    --     -- call the setup function with default properties
    --     which_key.setup()
    --
    --     -- Register prefixes for the different key mappings we have setup previously
    --     which_key.register({
    --         {"<leader>/", group = "Comments"},
    --         {"<leader>c", group = "[C]ode"},
    --         {"<leader>d",group = "[D]ebug" },
    --         {"<leader>e",group = "[E]xplorer"},
    --         {"<leader>f", group = "[F]ind"},
    --         {"<leader>g", group = "[G]it"},
    --         {"<leader>J", group = "[J]ava"},
    --         {"<leader>t", group = "[T]ab"},
    --         {"<leader>w",group = "[W]indow"},
    --     })
    -- end
}
