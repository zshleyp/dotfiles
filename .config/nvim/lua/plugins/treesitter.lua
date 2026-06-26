return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local config = require("lazy")
		config.setup({
			auto_install = true,
			highlight = { enable = true },
      ensure_installed = { "c", "lua", "vim", "markeown" },
			indent = { enable = true },
		})
	end,
}
