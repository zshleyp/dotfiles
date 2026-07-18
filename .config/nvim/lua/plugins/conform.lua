return {
    "stevearc/conform.nvim",
    opts = {
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback"
        }
        ,
        formatters_by_ft = {
            c = { "clang_format" },
            cpp = { "clang_format" },
            header = { "clang_format" }
        },
        formatters = {
            clang_format = {
                command = "clang-format",
                append_args = function()
                    return { "--style={BasedOnStyle: LLVM, IndentWidth: 4, PointerAlignment: Left}" }
                end
            }
        },
    },
}
