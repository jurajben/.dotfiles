return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "main",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				group_empty_dirs = true,
			},
		})
		vim.keymap.set("n", "<C-m>", ":Neotree toggle<CR>")
	end,
}
