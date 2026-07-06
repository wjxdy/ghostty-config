-- 诊断面板：trouble.nvim
-- <leader>xx 打开/关闭；<leader>xd 仅当前 buffer 诊断；<leader>xs 符号大纲

vim.pack.add { 'https://github.com/folke/trouble.nvim' }

require('trouble').setup {}

vim.keymap.set('n', '<leader>xx', '<Cmd>Trouble diagnostics toggle<CR>', { desc = 'Trouble 诊断列表' })
vim.keymap.set('n', '<leader>xd', '<Cmd>Trouble diagnostics toggle filter.buf=0<CR>', { desc = '当前 buffer 诊断' })
vim.keymap.set('n', '<leader>xs', '<Cmd>Trouble symbols toggle focus=false<CR>', { desc = '符号大纲' })
vim.keymap.set('n', '<leader>xl', '<Cmd>Trouble loclist toggle<CR>', { desc = 'location list' })
vim.keymap.set('n', '<leader>xq', '<Cmd>Trouble qflist toggle<CR>', { desc = 'quickfix' })
