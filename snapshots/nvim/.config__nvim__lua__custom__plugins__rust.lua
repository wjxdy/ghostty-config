-- Rust 开发增强：rustaceanvim
-- 接管 rust_analyzer 启动；自动 inlay hints / cargo 命令 / debug 集成
-- rust_analyzer 二进制由 Mason 的 ensure_installed 安装

vim.pack.add { 'https://github.com/mrcjkb/rustaceanvim' }

vim.g.rustaceanvim = {
  tools = {
    hover_actions = { auto_focus = true },
  },
  server = {
    -- 强制使用 Mason 安装的 rust-analyzer，绕开 ~/.cargo/bin 里那个坏掉的 rustup 代理
    cmd = function()
      return { vim.fn.expand '$HOME/.local/share/nvim/mason/bin/rust-analyzer' }
    end,
    -- rustaceanvim 不走 vim.lsp.config，拿不到 blink 自动注入的补全 capabilities，必须手动传，否则没有智能补全
    capabilities = require('blink.cmp').get_lsp_capabilities(),
    on_attach = function(_, bufnr)
      vim.keymap.set('n', '<leader>ca', function() vim.cmd.RustLsp('codeAction') end,
        { buffer = bufnr, desc = 'Rust [C]ode [A]ction' })
      vim.keymap.set('n', '<leader>rr', function() vim.cmd.RustLsp('runnables') end,
        { buffer = bufnr, desc = 'Rust [R]unnables' })
      vim.keymap.set('n', '<leader>rd', function() vim.cmd.RustLsp('debuggables') end,
        { buffer = bufnr, desc = 'Rust [D]ebuggables' })
      vim.keymap.set('n', 'K', function() vim.cmd.RustLsp { 'hover', 'actions' } end,
        { buffer = bufnr, desc = 'Rust Hover Actions' })
    end,
    default_settings = {
      ['rust-analyzer'] = {
        cargo = { allFeatures = true, loadOutDirsFromCheck = true, buildScripts = { enable = true } },
        checkOnSave = true,
        check = { command = 'clippy' },
        procMacro = { enable = true },
        -- 补全:显式开启自动导入,补全未导入的符号时自动加 use
        completion = {
          autoimport = { enable = true },
          autoself = { enable = true },
          callable = { snippets = 'fill_arguments' },
          fullFunctionSignatures = { enable = true },
        },
        -- 自动导入生成的 use 语句风格:按模块分组、优先 self::
        imports = {
          granularity = { group = 'module' },
          prefix = 'self',
        },
        inlayHints = {
          bindingModeHints = { enable = false },
          chainingHints = { enable = true },
          closingBraceHints = { minLines = 10 },
          parameterHints = { enable = true },
          typeHints = { enable = true },
        },
      },
    },
  },
}
