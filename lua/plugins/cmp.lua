local cmp = require("cmp")
return {
    "hrsh7th/nvim-cmp",
    opts = {
        mapping = cmp.mapping.preset.insert({
            ["<Tab>"] = cmp.mapping.complete(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
            ["<S-CR>"] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Replace,
                select = true,
            }),
        }),
    },
}
