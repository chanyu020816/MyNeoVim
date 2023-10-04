vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")


keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


keymap.set("n", "<leader>sv", "<C-w>v")

keymap.set("n", "<leader>sh", "<C-w>s")

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

keymap.set("n", "<leader>ml", ":bnext<CR>")
keymap.set("n", "<leader>mh", ":bprevious<CR>")

keymap.set('n', '<space>rs', '<cmd>IronRepl<cr>')
keymap.set('n', '<space>rr', '<cmd>IronRestart<cr>')
keymap.set('n', '<space>rf', '<cmd>IronFocus<cr>')
keymap.set('n', '<space>rh', '<cmd>IronHide<cr>')

