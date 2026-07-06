-- 个人快捷键映射

-- jk 快速退出 insert / terminal / visual 模式
vim.keymap.set('i', 'jk', '<Esc>', { desc = '退出 insert 模式' })
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { desc = '退出 terminal 模式' })
vim.keymap.set('v', 'jk', '<Esc>', { desc = '退出 visual 模式' })
