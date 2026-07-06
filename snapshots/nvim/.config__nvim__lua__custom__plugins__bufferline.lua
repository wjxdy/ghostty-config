-- 顶部 buffer 栏：bufferline.nvim
-- <S-h>/<S-l> 切换上一个/下一个 buffer；<leader>bd 关闭当前 buffer

vim.pack.add { 'https://github.com/akinsho/bufferline.nvim' }

require('bufferline').setup {
  options = {
    mode = 'buffers',
    diagnostics = 'nvim_lsp',
    diagnostics_indicator = function(count, level)
      local icon = level:match('error') and ' ' or ' '
      return ' ' .. icon .. count
    end,
    offsets = {
      {
        filetype = 'neo-tree',
        text = 'File Explorer',
        text_align = 'center',
        separator = true,
      },
    },
    show_buffer_close_icons = true,
    show_close_icon = false,
    separator_style = 'thin',
    always_show_bufferline = true,
  },
}

vim.keymap.set('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', { desc = '上一个 buffer' })
vim.keymap.set('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>', { desc = '下一个 buffer' })
vim.keymap.set('n', '<leader>bd', '<Cmd>bdelete<CR>', { desc = '关闭当前 buffer' })
vim.keymap.set('n', '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', { desc = '关闭其它 buffer' })
vim.keymap.set('n', '<leader>bp', '<Cmd>BufferLinePick<CR>', { desc = '选取 buffer' })
