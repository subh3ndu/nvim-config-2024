return {
	"m4xshen/autoclose.nvim",
	lazy = false,
	config = function()
		require("autoclose").setup({
			keys = {
				["<"] = {
					escape = true,
					close = true,
					pair = "<>",
					disabled_filetypes = { "text", "markdown", "cpp" },
				},
			},
		})
	end,
}
