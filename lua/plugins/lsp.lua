return {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
        inlay_hints = {
            enabled = true,
        },
        autoformat = false,
        format_notify = false,
    },
    ---@type lspconfig.options
}
