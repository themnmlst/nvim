return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "black" },
        cpp = { "clang-format" },
			},
			-- format_on_save = {
			-- 	lsp_fallback = true,
			-- 	async = false,
			-- 	timeout_ms = 1000,
			-- },
		})
    vim.api.nvim_set_keymap("n", "<leader>f", "<cmd>lua require('conform').format({async = true})<CR>", { noremap = true, silent = true })
	end,
}
