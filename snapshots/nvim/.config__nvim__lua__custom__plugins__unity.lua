-- Unity 集成：
-- 1) 在 Unity 项目根目录（含 Assets/ + ProjectSettings/）启动 nvim 时，
--    自动 --listen 一个稳定路径的 socket，供 ~/bin/unity-nvim 远程复用。
-- 2) C# 文件类型/缩进规约。

local function is_unity_root(dir)
  if not dir or dir == '' then return false end
  return vim.uv.fs_stat(dir .. '/Assets') ~= nil and vim.uv.fs_stat(dir .. '/ProjectSettings') ~= nil
end

local function find_unity_root(start)
  local dir = start or vim.fn.getcwd()
  while dir and dir ~= '/' and dir ~= vim.env.HOME do
    if is_unity_root(dir) then return dir end
    local parent = vim.fs.dirname(dir)
    if parent == dir then break end
    dir = parent
  end
  return nil
end

local function unity_socket_path(root)
  local hash = vim.fn.sha256(root):sub(1, 8)
  return '/tmp/nvim-unity-' .. hash .. '.sock'
end

-- 启动时检测 Unity 项目并起 socket
vim.api.nvim_create_autocmd('VimEnter', {
  group = vim.api.nvim_create_augroup('unity-nvim-listen', { clear = true }),
  callback = function()
    local root = find_unity_root()
    if not root then return end

    local sock = unity_socket_path(root)
    -- 已有现存 listener 就不重复 start
    for _, addr in ipairs(vim.fn.serverlist()) do
      if addr == sock then return end
    end
    -- 残留 socket 文件清理
    if vim.uv.fs_stat(sock) then pcall(vim.uv.fs_unlink, sock) end

    local ok, err = pcall(vim.fn.serverstart, sock)
    if ok then
      vim.notify('Unity: nvim listening on ' .. sock, vim.log.levels.INFO)
    else
      vim.notify('Unity: serverstart failed: ' .. tostring(err), vim.log.levels.WARN)
    end
  end,
})

-- 退出时清理 socket 文件（serverstart 不会自动删）
vim.api.nvim_create_autocmd('VimLeavePre', {
  group = vim.api.nvim_create_augroup('unity-nvim-cleanup', { clear = true }),
  callback = function()
    local root = find_unity_root()
    if not root then return end
    pcall(vim.uv.fs_unlink, unity_socket_path(root))
  end,
})

-- C# 缩进与排版（Unity 默认 4 空格）
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('unity-cs-indent', { clear = true }),
  pattern = { 'cs', 'csharp' },
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.softtabstop = 4
    vim.bo.expandtab = true
  end,
})
