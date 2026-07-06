-- 自动保存：离开缓冲区或失去焦点时静默写盘
-- 排除终端/帮助/quickfix、不可修改 buffer、未命名 buffer
-- 改成 BufLeave/FocusLost 触发：避免每次 InsertLeave 都触发，
-- 与 conform 的 format_on_save 配合更平稳

vim.api.nvim_create_autocmd({ 'BufLeave', 'FocusLost' }, {
  pattern = '*',
  callback = function()
    if vim.bo.modified
      and vim.bo.buftype == ''
      and vim.bo.modifiable
      and vim.fn.expand('%') ~= ''
    then
      vim.cmd('silent! write')
    end
  end,
  desc = '自动保存',
})
