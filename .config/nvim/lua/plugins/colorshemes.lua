--
--   __  __    __  __    ______   ______    ______    ______    ______    ______    ______    ______
--  /\ \_\ \  /\ \/\ \  /\__  _\ /\  ___\  /\  == \  /\  __ \  /\  == \  /\  == \  /\  ___\  /\  == \
--  \ \  __ \ \ \ \_\ \ \/_/\ \/ \ \ \__ \ \ \  __<  \ \  __ \ \ \  __<  \ \  __<  \ \  __\  \ \  __<
--   \ \_\ \_\ \ \_____\   \ \_\  \ \_____\ \ \_\ \_\ \ \_\ \_\ \ \_____\ \ \_____\ \ \_____\ \ \_\ \_\
--    \/_/\/_/  \/_____/    \/_/   \/_____/  \/_/ /_/  \/_/\/_/  \/_____/  \/_____/  \/_____/  \/_/ /_/
--

return {
    -- For setting default theme, add it to the first {} set
    { -- Set default Colorscheme
        "LazyVim/LazyVim",
        opts = {
            colorscheme = { "catppuccin" },
        },
    },
    { -- Nord Colorscheme
        "gbprod/nord.nvim",
        lazy = false,
        priority = 1000,
    },
    { -- Tokyo Night Colorscheme
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
    },
    { -- Rose Pine Colorscheme
        "rose-pine/neovim",
        lazy = false,
        priority = 1000,
    },
    { -- Dracula Colorscheme
        "mofiqul/dracula.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        opts = {
            term_colors = true,
            transparent_background = false,
            styles = {
                comments = {},
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
            },
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },
            integrations = {
                telescope = {
                    enabled = true,
                    style = "nvchad",
                },
                dropbar = {
                    enabled = true,
                    color_mode = true,
                },
            },
        },
    },
}
