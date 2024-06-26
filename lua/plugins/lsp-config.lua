return {
	{
		"williamboman/mason.nvim",
    lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
	},
	{
		"neovim/nvim-lspconfig",
    lazy = false,
		config = function()
			local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
        capabilities = capabilities
      }) -- lua
			lspconfig.tsserver.setup({
        capabilities = capabilities
      }) -- Javascript & Typescript
			lspconfig.tailwindcss.setup({
        capabilities = capabilities
      }) -- Tailwind
			lspconfig.clangd.setup({
        capabilities = capabilities
      }) -- c, cpp
			lspconfig.omnisharp.setup({
        capabilities = capabilities
      }) -- c#

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
