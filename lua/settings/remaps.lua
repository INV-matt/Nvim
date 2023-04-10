local g = vim.g
local o = vim.o
local A = vim.api
local bo = vim.bo
local set = vim.keymap.set


g.mapleader = " "

set("n", "<leader>=", "<C-a>", { silent = true })
set("n", "<leader>-", "<C-x>", { silent = true })

-- Split Window
set("n", "<leader>sv", "<C-w>v", { silent = true })
set("n", "<leader>sh", "<C-w>s", { silent = true })
set("n", "<leader>s=", "<C-w>=", { silent = true })
set("n", "<leader>s<Tab>", "<C-w><C-w>", { silent = true })
set("n", "<leader>sx", ":close<CR>", { silent = true })

-- Tab
set("n", "<leader>tt", ":tabnew<CR>", { silent = true })
set("n", "<leader>tx", ":tabclose<CR>", { silent = true })
set("n", "<leader>tl", ":tabnext<CR>", { silent = true })
set("n", "<leader>th", ":tabprevious<CR>", { silent = true })
set("n", "<leader>t<Tab>", "g<Tab>", { silent = true })

-- Move Selected Up and Down
set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- Paste without overriding buffer
set("x", "<leader>p", "\"_dP", { silent = true })


-- PLUGIN RELATED KEYMAPS
set("n", "<leader>sm", ":MaximizerToggle<CR>", { silent = true })

set("n", "<leader>u", ":UndotreeToggle<CR>", { silent = true })

set("n", "<leader>gs", vim.cmd.Git, { silent = true })

set("n", "<leader><Tab>", ":NvimTreeToggle<CR>", { silent = true })

