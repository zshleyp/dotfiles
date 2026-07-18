return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "svelte", "cssls", "html", "ts_ls", "rust_analyzer", "clangd" }
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
