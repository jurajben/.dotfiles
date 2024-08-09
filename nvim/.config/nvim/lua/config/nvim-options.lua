vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.opt.number = true
vim.g.mapleader = " "

vim.api.nvim_set_keymap('n', '<C-p>', '"+p', {})
vim.api.nvim_set_keymap('n', '<C-q>', '<C-w><C-w>', {})

vim.keymap.set('n', '<C-a>', ':vsplit<CR>')
vim.keymap.set('n', '<C-s>', ':split<CR>')

-- Tabby keymaps
vim.api.nvim_set_keymap("n", "<leader>tt", ":$tabnew<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>to", ":tabonly<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-n>", ":tabn<CR>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-p>", ":tabp<CR>", { noremap = true })
-- move current tab to previous position
vim.api.nvim_set_keymap("n", "<leader>tmp", ":-tabmove<CR>", { noremap = true })
-- move current tab to next position
vim.api.nvim_set_keymap("n", "<leader>tmn", ":+tabmove<CR>", { noremap = true })

-- dismiss messages
vim.api.nvim_set_keymap("n", "<leader>d", ":NoiceDismiss<CR>", { noremap = true })
