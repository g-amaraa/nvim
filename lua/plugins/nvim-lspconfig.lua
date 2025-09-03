-- ================================================================================================
-- TITLE : nvim-lspconfig
-- ABOUT : Quickstart configurations for the built-in Neovim LSP client.
-- LINKS :
--   > github                  : https://github.com/neovim/nvim-lspconfig
--   > mason.nvim (dep)        : https://github.com/mason-org/mason.nvim
--   > efmls-configs-nvim (dep): https://github.com/creativenull/efmls-configs-nvim
--   > cmp-nvim-lsp (dep)      : https://github.com/hrsh7th/cmp-nvim-lsp
-- ================================================================================================

return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} }, -- LSP/DAP/Linter installer & manager
		"creativenull/efmls-configs-nvim", -- Preconfigured EFM Language Server setups
		"hrsh7th/cmp-nvim-lsp", -- nvim-cmp source for LSP-based completion
	},
	config = function()
		require("utils.diagnostics").setup()
		require("servers")
		require('mason-tool-installer').setup({
			ensure_installed = {
				{ 'bash-language-server', auto_update = true },
				'gofumpt',
				'revive',
				'solhint',
				'prettierd',
				'lua-language-server',
				'luacheck',
				'stylua',
				'flake8',
				'black',
				'emmet-ls',
				'eslint_d',
				'json-lsp',
				'fixjson',
				'shellcheck',
				'shfmt',
				'hadolint',
				'cpplint',
				'clang-format',
				'efm',
				'sqls',
				'typescript-language-server',
				'tailwindcss-language-server',
				'dotenv-linter',
				'svelte-language-server'
			},
			auto_update = false,
			run_on_start = true,
			integrations = {
				['mason-lspconfig'] = true,
				['mason-null-ls'] = true,
				['mason-nvim-dap'] = true,
			},
		})
	end,
}
