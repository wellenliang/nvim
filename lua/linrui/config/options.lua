vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.autoformat = true

vim.g.root_spec = { "lsp", { ".git", ".lua" }, "cwd" }

vim.g.root_lsp_ignore = { "copilot" }


vim.g.trouble_lualine = true

local opt = vim.opt

opt.clipboard = vim.env.SSH_TTY or "unnamedplus" -- 使用系统剪贴板
opt.completeopt = "menu,menuone,noselect"        -- 完成选项
opt.conceallevel = 2                             -- 隐藏级别
opt.confirm = true                               -- 确认操作
opt.cursorline = true                            -- 光标行高亮
opt.expandtab = true                             -- 使用空格代替制表符
opt.fileencoding = "utf-8"                       -- 文件编码
opt.fillchars = {
	foldopen = "",
	foldclose = "",
	fold = " ",
	foldsep = " ",
	diff = "╱",
	eob = " ",
}                              -- 去掉末尾空行的 ~
opt.foldlevel = 99             -- 折叠级别
opt.formatexpr = "auto"        -- 格式化选项
opt.formatoptions = "jcroqlnt" -- 格式化选项
opt.grepformat = "%f:%l:%m"    -- grep格式
opt.grepprg = "rg --vimgrep"   -- grep程序
opt.ignorecase = true          -- 忽略大小写
opt.inccommand = "nosplit"     -- 实时替换
opt.jumpoptions = "view"       -- 跳转选项
opt.laststatus = 3             -- 显示状态栏
opt.linebreak = true           -- 换行选项
opt.list = true                -- 显示空格
opt.mouse = "a"                -- 鼠标模式
opt.number = true              -- 显示行号
opt.pumblend = 10              -- 弹出菜单透明度
opt.pumheight = 10             -- 弹出菜单高度
opt.relativenumber = true      -- 相对行号
opt.ruler = false              -- 显示光标位置
opt.scrolloff = 4              -- 滚动选项
opt.sessionoptions = {
	"buffers",
	"curdir",
	"tabpages",
	"winsize",
	"help",
	"globals",
	"skiprtp",
	"folds"
}                                                                -- 会话选项
opt.shiftround = true                                            -- 缩进选项
opt.shiftwidth = 2                                               -- 缩进宽度
opt.shortmess:append({ W = true, I = true, c = true, C = true }) -- 短消息选项
opt.showmode = false                                             -- 显示模式
opt.sidescrolloff = 8                                            -- 滚动选项
opt.signcolumn = "yes"                                           -- 显示标志列
opt.smartcase = true                                             -- 智能大小写
opt.smartindent = true                                           -- 智能缩进
opt.spelllang = { "en" }                                         -- 拼写检查语言
opt.splitbelow = true                                            -- 水平分割窗口在下
opt.splitkeep = "screen"                                         -- 分割窗口选项
opt.splitright = true                                            -- 垂直分割窗口在右
opt.statuscolumn = {
	" %f %y %m %r %=%-14.(%l,%c%V%) %P",
	" %f %y %m %r %=%-14.(%l,%c%V%) %P",
	" %f %y %m %r %=%-14.(%l,%c%V%) %P",
	" %f %y %m %r %=%-14.(%l,%c%V%) %P",
}                                            -- 状态栏选项
opt.tabstop = 2                              -- 制表符宽度
opt.termguicolors = true                     -- 终端颜色
opt.timeoutlen = vim.g.vscode or 1000 or 300 -- 超时选项
opt.undofile = true                          -- 允许撤销
opt.undolevels = 10000                       -- 撤销级别
opt.updatetime = 200                         -- 更新频率
opt.virtualedit = "block"                    -- 虚拟编辑选项
opt.wildmode = "longest:full,full"           -- 补全模式
opt.winminwidth = 5                          -- 窗口最小宽度
opt.wrap = false                             -- 自动换行

if vim.fn.has("nvim-0.10") == 1 then
	opt.smoothscroll = true
	opt.foldexpr = "nvim_treesitter#foldexpr()"
	opt.foldmethod = "expr"
	opt.foldtext = ""
else
	opt.foldmethod = "indent"
	opt.foldtext = "getline(vim.v.foldstart)"
end

vim.g.markdown_recommend_style = 0
