return {
        "folke/flash.nvim",
        lazy = true, -- Load on demand
        event = "VeryLazy", -- Load when the editor is idle
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash Jump" },
            { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
            { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
            { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Flash Treesitter Search" },
            { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
        config = function()
            require("flash").setup({
                modes = {
                    char = {
                        enabled = true,
                        keys = { "f", "F", "t", "T" },
                    },
                },
            })
        end,
    }
