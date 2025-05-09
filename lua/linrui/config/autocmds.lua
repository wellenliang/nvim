
local function augroup(name)
	return vim.api.nvim_create_augroup('linrui.' .. name, { clear = true })
end

-- 检查文件是否被修改,修改后重新加载
vim.api.nvim_create_autocmd({"FocusGained", "TermClose", "TermLeave"}, {
	group = augroup("checktime"),
	callback = function()
		if vim.o.buftype ~= "nofile" then
			vim.cmd("checktime")
		end
	end
})

-- 复制高亮文本
vim.api.nvim_create_autocmd("TextYankPost", {
	group = augroup("highlight_yank"),
	callback = function()
		(vim.hl or vim.highlight).on_yank()
	end
})

-- 自动调整窗口大小
vim.api.nvim_create_autocmd({"VimResized"}, {
	group = augroup("resize_splits"),
	callback = function()
		vim.cmd("tabdo wincmd =")
		vim.cmd("tabnext " .. current_tab)
	end
})
