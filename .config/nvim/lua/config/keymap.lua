vim.g.mapleader = " "
vim.keymap.set("n", "<leader>E", vim.cmd.Ex)
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")

vim.keymap.set({ "n", "i", "v" }, "<C-s>", vim.cmd.write)

-- Window Management
vim.keymap.set("n", "<leader>qq", function() vim.cmd(":qa") end)
vim.keymap.set("n", "<leader>QQ", function() vim.cmd(":qa!") end)

vim.keymap.set("n", "<leader>qw", function() vim.cmd(":q") end)

vim.keymap.set("n", "<leader>wq", function() vim.cmd(":wq") end)

-- Resizing of windows

vim.keymap.set("n", "<M-k>", function() vim.cmd(":res +3") end)
vim.keymap.set("n", "<M-j>", function() vim.cmd(":res -3") end)
vim.keymap.set("n", "<M-l>", function() vim.cmd(":vertical res +3") end)
vim.keymap.set("n", "<M-h>", function() vim.cmd(":vertical res -3") end)

vim.keymap.set("n", "<leader><Down>", function() vim.cmd(":wincmd j") end)
vim.keymap.set("n", "<leader><Up>", function() vim.cmd(":wincmd k") end)
vim.keymap.set("n", "<leader><Left>", function() vim.cmd(":wincmd h") end)
vim.keymap.set("n", "<leader><Right>", function() vim.cmd(":wincmd l") end)


vim.keymap.set("n", "<leader>j", function() vim.cmd(":wincmd j") end)
vim.keymap.set("n", "<leader>k", function() vim.cmd(":wincmd k") end)
vim.keymap.set("n", "<leader>h", function() vim.cmd(":wincmd h") end)
vim.keymap.set("n", "<leader>l", function() vim.cmd(":wincmd l") end)

vim.keymap.set("n", "<leader>bd", function() vim.cmd(":bd") end)

-- LSP
vim.keymap.set("n", "<leader>fd", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>fe", "<cmd>Telescope diagnostics<cr>")
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>gtd", vim.lsp.buf.type_definition)
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>sr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>sh", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>sd", vim.diagnostic.setqflist)
vim.keymap.set({ "n", "v" }, "<leader>sa", vim.lsp.buf.code_action)


