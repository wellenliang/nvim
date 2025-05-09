if vim.fn.has("nvim-0.9.0") == 0 then
	vim.api.nvim_echo({
		{ "linrui.nvim requires Neovim 0.9.0 or higher", "ErrorMsg" },
		{ "\nPress any key to exit..." },
	}, true, {})
	vim.fn.getchar()
	vim.cmd([[quit]])
	return {}
end

return {
	{ "folke/lazy.nvim", version = "*" },
}
