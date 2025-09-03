-- ================================================================================================
-- TITLE : kanagawa.nvim
-- ABOUT : A subtle, warm colorscheme for Neovim inspired by Sublime Text's Melange theme.
-- LINKS :
--   > github : https://github.com/rebelot/kanagawa.nvim
-- ================================================================================================

return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme kanagawa")
	end,
}
