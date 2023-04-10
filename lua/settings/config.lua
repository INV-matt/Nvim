local o = vim.opt

o.number = true
o.relativenumber = true
o.cursorline = true

o.tabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true

o.wrap = false
o.ignorecase = true
o.smartcase = true

o.termguicolors = true
o.signcolumn = "yes"

o.backspace = "indent,eol,start"

o.clipboard:append("unnamedplus")

o.splitright = true
o.splitbelow = true 

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.nvim/undodir/"

o.hlsearch = false
o.incsearch = true

o.scrolloff = 16

