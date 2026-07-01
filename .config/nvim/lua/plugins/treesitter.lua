return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require('nvim-treesitter').install({
                "bash",
                "c",
                "diff",
                "html",
                "javascript",
                "jsdoc",
                "json",
                "lua",
                "luadoc",
                "luap",
                "markdown",
                "markdown_inline",
                "printf",
                "python",
                "query",
                "regex",
                "toml",
                "tsx",
                "typescript",
                "vim",
                "vimdoc",
                "xml",
                "yaml",
                "svelte",
                "css",
                "scss",
                "rust"
        })

        -- Automatically start treesitter for supported filetypes
        vim.api.nvim_create_autocmd('FileType', {
            callback = function(args)
                local lang = vim.treesitter.language.get_lang(args.match) or args.match
                local installed = require('nvim-treesitter').get_installed('parsers')
                if vim.tbl_contains(installed, lang) then
                    vim.treesitter.start(args.buf)
                end
            end,
        })
    end

}
