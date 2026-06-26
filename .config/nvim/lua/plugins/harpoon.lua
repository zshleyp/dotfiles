return {
  "ThePrimeagen/harpoon",
  enabled = true,
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },

  config = function()
	local harpoon = require("harpoon")

		harpoon:setup({
			global_settings = {
				save_on_toggle = true,
				save_on_change = true,
			},
		})

		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Harpoon add file" })
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)

		vim.keymap.set("n", "<C-h>", function()
  harpoon:list():select(1)
end)

vim.keymap.set("n", "<C-j>", function()
  harpoon:list():select(2)
end)

vim.keymap.set("n", "<C-k>", function()
  harpoon:list():select(3)
end)

vim.keymap.set("n", "<C-l>", function()
  harpoon:list():select(4)
end)

vim.keymap.set("n", "<C-;>", function()
  harpoon:list():select(5)
end)

vim.keymap.set("n", "<M-n>", function()
  harpoon:list():next()
end)

vim.keymap.set("n", "<M-p>", function()
  harpoon:list():prev()
end)

  end,
}
