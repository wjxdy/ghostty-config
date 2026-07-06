-- 文件树：neo-tree.nvim
-- <leader>e 切换显示/隐藏；启动时默认交给 Dashboard 当入口

local plugins = {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

if vim.g.have_nerd_font then
  table.insert(plugins, 'https://github.com/nvim-tree/nvim-web-devicons')
end

vim.pack.add(plugins)

require('neo-tree').setup {
  close_if_last_window = true,
  enable_git_status = false,
  filesystem = {
    hijack_netrw_behavior = 'disabled',
    follow_current_file = { enabled = true },
    use_libuv_file_watcher = true,
    filtered_items = {
      visible = false,             -- 默认隐藏被过滤的项，按 H 临时显示
      hide_dotfiles = false,       -- 显示 .env / .gitignore 等 dotfile
      hide_gitignored = true,      -- 隐藏 node_modules / target 等 gitignore 内容
      hide_hidden = true,          -- Windows 隐藏属性
      hide_by_name = {
        '.DS_Store',
        'thumbs.db',
      },
      never_show = {
        '.git',
      },
    },
  },
  window = {
    width = 32,
  },
}

vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { desc = '切换文件树' })

vim.api.nvim_create_autocmd('VimEnter', {
  group = vim.api.nvim_create_augroup('project-dashboard-entry', { clear = true }),
  callback = function()
    if vim.fn.argc(-1) ~= 1 then return end

    local dir = vim.fn.argv(0)
    if dir == '' or vim.fn.isdirectory(dir) ~= 1 then return end
    dir = vim.fs.normalize(dir)

    vim.schedule(function()
      local dashboard_buf = vim.api.nvim_create_buf(false, true)

      vim.cmd.cd(vim.fn.fnameescape(dir))
      require('snacks').dashboard.open({ buf = dashboard_buf, win = vim.api.nvim_get_current_win() })
      vim.keymap.set('n', 'q', '<Cmd>qa<CR>', { buffer = dashboard_buf, silent = true })

      vim.defer_fn(function()
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          local name = vim.api.nvim_buf_get_name(buf)
          if name ~= '' and vim.fs.normalize(name) == dir then
            pcall(vim.api.nvim_buf_delete, buf, { force = true })
          end
        end
      end, 20)
    end)
  end,
})
