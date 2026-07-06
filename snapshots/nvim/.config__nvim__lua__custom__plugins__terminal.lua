-- 底部内嵌终端：toggleterm.nvim
-- <leader>t 在编辑器里弹出/收起；终端里按 <Esc> 退到普通模式，再 <leader>t 收起

vim.pack.add { 'https://github.com/akinsho/toggleterm.nvim' }

require('toggleterm').setup {
  direction = 'horizontal',
  size = function(term)
    if term.direction == 'horizontal' then
      return math.floor(vim.o.lines * 0.3)
    end
  end,
  start_in_insert = true,
  shade_terminals = false,
  shell = vim.o.shell,
}

vim.keymap.set('n', '<leader>t', '<Cmd>ToggleTerm<CR>', { desc = '切换底部终端' })

-- 在终端 buffer 里加一些键位让窗口切换/退出更顺手
vim.api.nvim_create_autocmd('TermOpen', {
  pattern = 'term://*toggleterm#*',
  callback = function()
    local opts = { buffer = 0 }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], opts)
    vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], opts)
    vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], opts)
    vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], opts)
  end,
})
