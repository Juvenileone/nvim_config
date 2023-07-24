local opt = vim.opt

opt.autoread = true
opt.autowrite = true

opt.clipboard = "unnamedplus"

opt.number = true
opt.relativenumber = true

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.shiftround = true

opt.ignorecase = true
opt.smartcase = true
opt.smartindent = true

opt.showmode=false
opt.scrolloff = 8
opt.completeopt = { "menuone", "noselect" }
opt.list = true
opt.undofile = true
opt.undolevels = 1000
opt.wrap = false
opt.conceallevel = 3
opt.confirm = true
opt.cursorline = true
opt.inccommand = "nosplit"
opt.laststatus = 0
opt.mouse = "a"
opt.pumblend = 10
opt.pumheight = 10
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shortmess:append({ W = true, I = true, c = true })
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.spelllang = { "en" }
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.updatetime = 200
opt.wildmode = "longest:full,full"
opt.winminwidth = 5

