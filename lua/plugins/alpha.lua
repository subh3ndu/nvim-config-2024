return {
	{
		"goolord/alpha-nvim",
		dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
		config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        [[                        ]],
        [[                        ]],
        [[                        ]],
        [[    Welcome to Neovim   ]],
        [[                        ]],
        [[                        ]],
        [[                        ]],
      }

      alpha.setup(dashboard.opts)
			-- require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},
}
