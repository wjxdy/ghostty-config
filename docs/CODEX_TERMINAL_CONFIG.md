# Codex Ghostty, Starship, Tmux, And Neovim Configuration Map

Generated: 2026-07-07 23:14:53

This repository is a Codex-readable map of selected local developer-environment configuration on this Mac. It includes Ghostty, Starship, tmux, Neovim, and yazi. zsh, LazyGit, iTerm2, Apple Terminal, and other terminal software are intentionally excluded.

## Quick Summary

- Primary Ghostty config: `~/.config/ghostty/config`.
- Installed Ghostty app found: `/Applications/Ghostty.app`.
- Active font: MesloLGS NF, size 14.
- Active palette: Catppuccin-like dark palette with `#1e1e2e` background and `#cdd6f4` foreground.
- Window behavior: transparent macOS titlebar, balanced padding, truecolor environment, clipboard copy-on-select, and shell integration detection.
- Starship config: `~/.config/starship.toml`, using a Catppuccin Mocha powerline-style prompt with OS, user, directory, git, language runtimes, conda, time, and command duration modules.
- tmux config: `~/.tmux.conf`, using `Ctrl-A` prefix, vim-style copy mode, mouse support, TPM plugins, Catppuccin/tmux framework, Gruvbox palette overrides, and CPU/MEM status modules.
- Neovim config: `~/.config/nvim`, based on a Kickstart-style Lua setup with custom plugin modules for theme, file tree, terminal, Rust, Unity, bufferline, autosave, and Trouble.
- yazi config: `~/.config/yazi`, including Catppuccin Mocha flavor files and full-border plugin files.
- Ghostty color source map: `docs/GHOSTTY_COLOR_SOURCES.md`, explaining that Ghostty base colors, Starship prompt colors, zsh syntax highlighting, vivid/eza, and bat together create the colored text experience.
- Security: secret-like values are redacted if found. The included Ghostty, Starship, tmux, Neovim, and yazi files scanned here did not require secret redaction.

## Runtime Versions

- `ghostty app binary`: Ghostty 1.3.1
- `starship`: starship 1.25.1
- `tmux`: tmux 3.6a
- `nvim`: NVIM v0.12.2

## Installed Terminal Apps

- `/Applications/Ghostty.app`

## Ghostty Active Settings

| Key | Value |
| --- | --- |
| `font-family` | `"MesloLGS NF"` |
| `font-size` | `14` |
| `palette` | `0=#45475a` |
| `palette` | `1=#f38ba8` |
| `palette` | `2=#a6e3a1` |
| `palette` | `3=#f9e2af` |
| `palette` | `4=#89b4fa` |
| `palette` | `5=#f5c2e7` |
| `palette` | `6=#94e2d5` |
| `palette` | `7=#a6adc8` |
| `palette` | `8=#585b70` |
| `palette` | `9=#f37799` |
| `palette` | `10=#89d88b` |
| `palette` | `11=#ebd391` |
| `palette` | `12=#74a8fc` |
| `palette` | `13=#f2aede` |
| `palette` | `14=#6bd7ca` |
| `palette` | `15=#bac2de` |
| `background` | `#1e1e2e` |
| `foreground` | `#cdd6f4` |
| `cursor-color` | `#f5e0dc` |
| `cursor-text` | `#1e1e2e` |
| `selection-background` | `#585b70` |
| `selection-foreground` | `#cdd6f4` |
| `background-opacity` | `1.0` |
| `background-blur` | `false` |
| `macos-titlebar-style` | `transparent` |
| `window-padding-x` | `12` |
| `window-padding-y` | `10` |
| `window-padding-balance` | `true` |
| `term` | `xterm-ghostty` |
| `env` | `TERMINFO=/Applications/Ghostty.app/Contents/Resources/terminfo` |
| `env` | `COLORTERM=truecolor` |
| `env` | `TERM_PROGRAM=ghostty` |
| `scrollback-limit` | `10000` |
| `bold-is-bright` | `true` |
| `cursor-style` | `block` |
| `cursor-style-blink` | `false` |
| `copy-on-select` | `clipboard` |
| `confirm-close-surface` | `false` |
| `shell-integration` | `detect` |
| `shell-integration-features` | `cursor,no-sudo,title,ssh-env,ssh-terminfo,path` |

## Inventory

| Category | Source | Snapshot | Lines | Updated | Redactions |
| --- | --- | --- | ---: | --- | ---: |
| ghostty/current | `/Users/xulei/.config/ghostty/config` | `snapshots/ghostty/current/.config__ghostty__config` | 50 | 2026-06-30 22:10:05 | 0 |
| ghostty/backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260603-230047` | `snapshots/ghostty/backups/.config__ghostty__backups__config.backup-20260603-230047` | 34 | 2026-06-03 23:00:47 | 0 |
| ghostty/backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260629-213945` | `snapshots/ghostty/backups/.config__ghostty__backups__config.backup-20260629-213945` | 15 | 2026-06-29 21:39:45 | 0 |
| ghostty/backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260629-214846` | `snapshots/ghostty/backups/.config__ghostty__backups__config.backup-20260629-214846` | 24 | 2026-06-29 21:48:46 | 0 |
| ghostty/backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260630-211351` | `snapshots/ghostty/backups/.config__ghostty__backups__config.backup-20260630-211351` | 28 | 2026-06-30 21:13:51 | 0 |
| ghostty/backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260630-211709` | `snapshots/ghostty/backups/.config__ghostty__backups__config.backup-20260630-211709` | 28 | 2026-06-30 21:17:09 | 0 |
| ghostty/backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260630-220601` | `snapshots/ghostty/backups/.config__ghostty__backups__config.backup-20260630-220601` | 28 | 2026-06-30 22:06:01 | 0 |
| ghostty/backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260630-220735` | `snapshots/ghostty/backups/.config__ghostty__backups__config.backup-20260630-220735` | 49 | 2026-06-30 22:07:35 | 0 |
| ghostty/backups | `/Users/xulei/.config/ghostty/backups/config.bak.20260604-232507` | `snapshots/ghostty/backups/.config__ghostty__backups__config.bak.20260604-232507` | 34 | 2026-06-04 23:25:07 | 0 |
| ghostty/backups | `/Users/xulei/.config/ghostty/backups/config.ghostty` | `snapshots/ghostty/backups/.config__ghostty__backups__config.ghostty` | 34 | 2026-06-03 23:03:53 | 0 |
| starship/current | `/Users/xulei/.config/starship.toml` | `snapshots/starship/current/.config__starship.toml` | 279 | 2026-06-29 21:49:11 | 0 |
| starship/backups | `/Users/xulei/.config/starship.toml.backup-20260629-214606` | `snapshots/starship/backups/.config__starship.toml.backup-20260629-214606` | 85 | 2026-06-29 21:46:06 | 0 |
| starship/backups | `/Users/xulei/.config/starship.toml.backup-20260629-214846` | `snapshots/starship/backups/.config__starship.toml.backup-20260629-214846` | 85 | 2026-06-29 21:48:46 | 0 |
| tmux/current | `/Users/xulei/.tmux.conf` | `snapshots/tmux/current/.tmux.conf` | 146 | 2026-07-04 20:22:58 | 0 |
| nvim | `/Users/xulei/.config/nvim/.github/ISSUE_TEMPLATE/bug_report.md` | `snapshots/nvim/.config__nvim__.github__ISSUE_TEMPLATE__bug_report.md` | 35 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/.github/pull_request_template.md` | `snapshots/nvim/.config__nvim__.github__pull_request_template.md` | 8 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/.github/workflows/stylua.yml` | `snapshots/nvim/.config__nvim__.github__workflows__stylua.yml` | 20 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/.gitignore` | `snapshots/nvim/.config__nvim__.gitignore` | 14 | 2026-05-23 23:34:09 | 0 |
| nvim | `/Users/xulei/.config/nvim/.stylua.toml` | `snapshots/nvim/.config__nvim__.stylua.toml` | 7 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/LICENSE.md` | `snapshots/nvim/.config__nvim__LICENSE.md` | 19 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/README.md` | `snapshots/nvim/.config__nvim__README.md` | 345 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/doc/kickstart.txt` | `snapshots/nvim/.config__nvim__doc__kickstart.txt` | 24 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/doc/tags` | `snapshots/nvim/.config__nvim__doc__tags` | 3 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/init.lua` | `snapshots/nvim/.config__nvim__init.lua` | 1064 | 2026-06-29 23:01:42 | 0 |
| nvim | `/Users/xulei/.config/nvim/init.lua.backup-20260629-230031` | `snapshots/nvim/.config__nvim__init.lua.backup-20260629-230031` | 1047 | 2026-06-29 23:00:31 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/autosave.lua` | `snapshots/nvim/.config__nvim__lua__custom__plugins__autosave.lua` | 18 | 2026-05-21 11:41:38 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/bufferline.lua` | `snapshots/nvim/.config__nvim__lua__custom__plugins__bufferline.lua` | 33 | 2026-05-21 11:42:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/filetree.lua` | `snapshots/nvim/.config__nvim__lua__custom__plugins__filetree.lua` | 70 | 2026-06-29 23:01:48 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/init.lua` | `snapshots/nvim/.config__nvim__lua__custom__plugins__init.lua` | 13 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/keymaps.lua` | `snapshots/nvim/.config__nvim__lua__custom__plugins__keymaps.lua` | 6 | 2026-05-18 14:31:50 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/rust.lua` | `snapshots/nvim/.config__nvim__lua__custom__plugins__rust.lua` | 56 | 2026-06-23 22:31:46 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/terminal.lua` | `snapshots/nvim/.config__nvim__lua__custom__plugins__terminal.lua` | 31 | 2026-05-17 19:37:43 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/theme.lua` | `snapshots/nvim/.config__nvim__lua__custom__plugins__theme.lua` | 54 | 2026-06-30 22:25:35 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/theme.lua.backup-20260630-210903` | `snapshots/nvim/.config__nvim__lua__custom__plugins__theme.lua.backup-20260630-210903` | 58 | 2026-06-30 21:09:03 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/trouble.lua` | `snapshots/nvim/.config__nvim__lua__custom__plugins__trouble.lua` | 12 | 2026-05-21 11:42:13 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/custom/plugins/unity.lua` | `snapshots/nvim/.config__nvim__lua__custom__plugins__unity.lua` | 71 | 2026-06-07 13:36:25 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/kickstart/health.lua` | `snapshots/nvim/.config__nvim__lua__kickstart__health.lua` | 52 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/kickstart/plugins/autopairs.lua` | `snapshots/nvim/.config__nvim__lua__kickstart__plugins__autopairs.lua` | 5 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/kickstart/plugins/debug.lua` | `snapshots/nvim/.config__nvim__lua__kickstart__plugins__debug.lua` | 95 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/kickstart/plugins/gitsigns.lua` | `snapshots/nvim/.config__nvim__lua__kickstart__plugins__gitsigns.lua` | 57 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/kickstart/plugins/indent_line.lua` | `snapshots/nvim/.config__nvim__lua__kickstart__plugins__indent_line.lua` | 6 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/kickstart/plugins/lint.lua` | `snapshots/nvim/.config__nvim__lua__kickstart__plugins__lint.lua` | 53 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/lua/kickstart/plugins/neo-tree.lua` | `snapshots/nvim/.config__nvim__lua__kickstart__plugins__neo-tree.lua` | 26 | 2026-05-17 18:47:06 | 0 |
| nvim | `/Users/xulei/.config/nvim/nvim-pack-lock.json` | `snapshots/nvim/.config__nvim__nvim-pack-lock.json` | 168 | 2026-06-04 23:42:36 | 0 |
| yazi | `/Users/xulei/.config/yazi/flavors/catppuccin-mocha.yazi/LICENSE` | `snapshots/yazi/.config__yazi__flavors__catppuccin-mocha.yazi__LICENSE` | 21 | 2026-06-29 21:54:27 | 0 |
| yazi | `/Users/xulei/.config/yazi/flavors/catppuccin-mocha.yazi/LICENSE-tmtheme` | `snapshots/yazi/.config__yazi__flavors__catppuccin-mocha.yazi__LICENSE-tmtheme` | 21 | 2026-06-29 21:54:27 | 0 |
| yazi | `/Users/xulei/.config/yazi/flavors/catppuccin-mocha.yazi/README.md` | `snapshots/yazi/.config__yazi__flavors__catppuccin-mocha.yazi__README.md` | 36 | 2026-06-29 21:54:27 | 0 |
| yazi | `/Users/xulei/.config/yazi/flavors/catppuccin-mocha.yazi/flavor.toml` | `snapshots/yazi/.config__yazi__flavors__catppuccin-mocha.yazi__flavor.toml` | 215 | 2026-06-29 21:54:27 | 0 |
| yazi | `/Users/xulei/.config/yazi/flavors/catppuccin-mocha.yazi/preview.png` | `snapshots/yazi/.config__yazi__flavors__catppuccin-mocha.yazi__preview.png` | 6440 | 2026-06-29 21:54:27 | 0 |
| yazi | `/Users/xulei/.config/yazi/flavors/catppuccin-mocha.yazi/tmtheme.xml` | `snapshots/yazi/.config__yazi__flavors__catppuccin-mocha.yazi__tmtheme.xml` | 2112 | 2026-06-29 21:54:27 | 1 |
| yazi | `/Users/xulei/.config/yazi/init.lua` | `snapshots/yazi/.config__yazi__init.lua` | 1 | 2026-06-29 21:56:14 | 0 |
| yazi | `/Users/xulei/.config/yazi/package.toml` | `snapshots/yazi/.config__yazi__package.toml` | 9 | 2026-06-29 22:05:06 | 0 |
| yazi | `/Users/xulei/.config/yazi/plugins/full-border.yazi/LICENSE` | `snapshots/yazi/.config__yazi__plugins__full-border.yazi__LICENSE` | 21 | 2026-06-29 21:56:09 | 0 |
| yazi | `/Users/xulei/.config/yazi/plugins/full-border.yazi/README.md` | `snapshots/yazi/.config__yazi__plugins__full-border.yazi__README.md` | 32 | 2026-06-29 21:56:09 | 0 |
| yazi | `/Users/xulei/.config/yazi/plugins/full-border.yazi/main.lua` | `snapshots/yazi/.config__yazi__plugins__full-border.yazi__main.lua` | 44 | 2026-06-29 21:56:09 | 0 |
| yazi | `/Users/xulei/.config/yazi/theme.toml` | `snapshots/yazi/.config__yazi__theme.toml` | 42 | 2026-06-29 22:05:31 | 0 |
| yazi | `/Users/xulei/.config/yazi/theme.toml.backup-20260629-215426` | `snapshots/yazi/.config__yazi__theme.toml.backup-20260629-215426` | 151 | 2026-06-29 21:54:26 | 0 |
| yazi | `/Users/xulei/.config/yazi/yazi.toml` | `snapshots/yazi/.config__yazi__yazi.toml` | 47 | 2026-06-04 23:31:30 | 0 |

## How Codex Should Use This Repository

1. Read `README.md` for the human entry point.
2. Read this file for the current configuration map and source paths.
3. Use `snapshots/ghostty/current/` for the active Ghostty config.
4. Use `snapshots/ghostty/backups/` to understand recent Ghostty config history.
5. Use `snapshots/starship/current/` for the active Starship config.
6. Use `snapshots/tmux/current/` for the active tmux config.
7. Use `snapshots/nvim/` for Neovim config files. Do not expect `.git/` internals there; they are intentionally excluded.
8. Use `snapshots/yazi/` for yazi config, flavor, plugin, and preview assets.
9. Read `docs/GHOSTTY_COLOR_SOURCES.md` before changing Ghostty, Starship, or shell color behavior.
10. Do not assume full shell behavior from this repository because zsh config is intentionally excluded; only color-source excerpts are documented.
11. Treat every `<REDACTED>` value as intentionally private and do not ask to restore it unless the user explicitly wants secret-management help.

## Notes For Future Changes

- Keep `~/.config/ghostty/config` as the canonical Ghostty source.
- Keep `~/.config/starship.toml` as the canonical Starship source.
- Keep `~/.tmux.conf` as the canonical tmux source.
- Keep `~/.config/nvim` as the canonical Neovim source.
- Keep `~/.config/yazi` as the canonical yazi source.
- Prefer preserving the current dark Catppuccin-like visual language unless the user asks for a new theme.
- Before pushing updates, rerun a secret scan for token, password, key, and credential patterns.
- Do not add full zsh, LazyGit, iTerm2, Terminal.app, or other terminal software config unless the user explicitly expands the scope.
