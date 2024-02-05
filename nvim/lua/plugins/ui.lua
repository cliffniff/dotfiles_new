return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "macchiato",
				integrations = {
					fidget = true,
					mason = false,
					treesitter_context = true,
				},
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "catppuccin",
					component_separators = " ",
				},
				sections = {
					lualine_x = {
						{
							"copilot",
							symbols = {
								spinners = require("copilot-lualine.spinners").pipe,
							},
						},
						"filetype",
					},
					lualine_y = { "searchcount", "selectioncount", "tabs" },
				},
			})
		end,
	},
	{
		"j-hui/fidget.nvim",
		opts = {
			notification = {
				window = {
					winblend = 0,
				},
			},
			progress = {
				suppress_on_insert = false,
				ignore_done_already = false,
				ignore_empty_message = false,
			},
		},
	},
}
