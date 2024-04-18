return {
    "hrsh7th/nvim-cmp",
    opts = function()
        local cmp = require("cmp")
        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
                ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<C-space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
            }),
        })
    end,
}
