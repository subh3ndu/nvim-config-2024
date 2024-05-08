return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local none_ls = require("null-ls")

    none_ls.setup({
      sources = {
        -- formatters
        none_ls.builtins.formatting.stylua, -- lua
        none_ls.builtins.formatting.prettier, -- ts 

        -- linters
        require("none-ls.diagnostics.eslint_d"), -- ts
        require("none-ls.diagnostics.cpplint"), -- c, cpp
      },
    })

    vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})
  end,
}
