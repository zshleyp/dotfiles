return {
    "vyfor/cord.nvim",

    config = function()
        require('cord').setup {
            display = {
                theme = "catppuccin",
                flavor = "accent"
            },
            buttons = {
                {
                    label = 'View Repository',
                    url = function(opts)
                        return opts.repo_url -- only show the button if a repo URL is found
                    end,
                },
            },
        }
    end,
}
