return {
	{
		"folke/twilight.nvim",
	},
	{
		"folke/zen-mode.nvim",
		config = function()
			vim.keymap.set("n", "<A-z>", ":ZenMode<CR>")
		end,
	},
}
