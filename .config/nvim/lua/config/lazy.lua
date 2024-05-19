--
--   __  __    __  __    ______   ______    ______    ______    ______    ______    ______    ______
--  /\ \_\ \  /\ \/\ \  /\__  _\ /\  ___\  /\  == \  /\  __ \  /\  == \  /\  == \  /\  ___\  /\  == \
--  \ \  __ \ \ \ \_\ \ \/_/\ \/ \ \ \__ \ \ \  __<  \ \  __ \ \ \  __<  \ \  __<  \ \  __\  \ \  __<
--   \ \_\ \_\ \ \_____\   \ \_\  \ \_____\ \ \_\ \_\ \ \_\ \_\ \ \_____\ \ \_____\ \ \_____\ \ \_\ \_\
--    \/_/\/_/  \/_____/    \/_/   \/_____/  \/_/ /_/  \/_/\/_/  \/_____/  \/_____/  \/_____/  \/_/ /_/
--

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
    -- Disable 'change detected, reloading...'
    change_detection = {
        notify = false,
    },
    -- update checker config made with gpippity
    checker = {
        enabled = true,
        notify = false,
        frequency = 432000,
    },
    spec = {
        -- add LazyVim and import its plugins
        { "LazyVim/LazyVim", import = "lazyvim.plugins" },
        -- import any extras modules here
        -- { import = "lazyvim.plugins.extras.lang.typescript" },
        -- { import = "lazyvim.plugins.extras.lang.json" },
        { import = "lazyvim.plugins.extras.ui.mini-animate" },
        { import = "lazyvim.plugins.extras.linting.eslint" },
        { import = "lazyvim.plugins.extras.formatting.prettier" },
        { import = "lazyvim.plugins.extras.lsp.none-ls" },

        -- import/override with your plugins
        { import = "plugins" },
    },
    defaults = {
        -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
        -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
        lazy = false,
        -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
        -- have outdated releases, which may break your Neovim install.
        version = false, -- always use the latest git commit
        -- version = "*", -- try installing the latest stable version for plugins that support semver
    },
    -- install = { colorscheme = {} },
    performance = {
        rtp = {
            -- disable some rtp plugins
            disabled_plugins = {
                "gzip",
                -- "matchit",
                -- "matchparen",
                -- "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
})