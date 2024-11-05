return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				lua = { "stylua" },
				cpp = { "clang-format" },
			},
		})

		vim.api.nvim_set_keymap(
			"n",
			"<leader>f",
			"<cmd>lua require('conform').format({async = true})<CR>",
			{ noremap = true, silent = true }
		)
	end,
}
