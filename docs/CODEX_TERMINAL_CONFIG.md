# Codex Ghostty Configuration Map

Generated: 2026-07-06 14:54:20

This repository is a Codex-readable map of the Ghostty configuration on this Mac. It includes the active Ghostty configuration and historical Ghostty backups only.

## Quick Summary

- Primary Ghostty config: `~/.config/ghostty/config`.
- Installed Ghostty app found: `/Applications/Ghostty.app`.
- Active font: MesloLGS NF, size 14.
- Active palette: Catppuccin-like dark palette with `#1e1e2e` background and `#cdd6f4` foreground.
- Window behavior: transparent macOS titlebar, balanced padding, truecolor environment, clipboard copy-on-select, and shell integration detection.
- Security: secret-like values are redacted if ever found, but the Ghostty files scanned here did not require secret redaction.

## Runtime Versions

- `ghostty app binary`: Ghostty 1.3.1

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
| current | `/Users/xulei/.config/ghostty/config` | `snapshots/current/.config__ghostty__config` | 50 | 2026-06-30 22:10:05 | 0 |
| backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260603-230047` | `snapshots/backups/.config__ghostty__backups__config.backup-20260603-230047` | 34 | 2026-06-03 23:00:47 | 0 |
| backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260629-213945` | `snapshots/backups/.config__ghostty__backups__config.backup-20260629-213945` | 15 | 2026-06-29 21:39:45 | 0 |
| backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260629-214846` | `snapshots/backups/.config__ghostty__backups__config.backup-20260629-214846` | 24 | 2026-06-29 21:48:46 | 0 |
| backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260630-211351` | `snapshots/backups/.config__ghostty__backups__config.backup-20260630-211351` | 28 | 2026-06-30 21:13:51 | 0 |
| backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260630-211709` | `snapshots/backups/.config__ghostty__backups__config.backup-20260630-211709` | 28 | 2026-06-30 21:17:09 | 0 |
| backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260630-220601` | `snapshots/backups/.config__ghostty__backups__config.backup-20260630-220601` | 28 | 2026-06-30 22:06:01 | 0 |
| backups | `/Users/xulei/.config/ghostty/backups/config.backup-20260630-220735` | `snapshots/backups/.config__ghostty__backups__config.backup-20260630-220735` | 49 | 2026-06-30 22:07:35 | 0 |
| backups | `/Users/xulei/.config/ghostty/backups/config.bak.20260604-232507` | `snapshots/backups/.config__ghostty__backups__config.bak.20260604-232507` | 34 | 2026-06-04 23:25:07 | 0 |
| backups | `/Users/xulei/.config/ghostty/backups/config.ghostty` | `snapshots/backups/.config__ghostty__backups__config.ghostty` | 34 | 2026-06-03 23:03:53 | 0 |

## How Codex Should Use This Repository

1. Read `README.md` for the human entry point.
2. Read this file for the current configuration map and source paths.
3. Use `snapshots/current/` for the active Ghostty config.
4. Use `snapshots/backups/` to understand recent Ghostty config history.
5. Treat every `<REDACTED>` value as intentionally private and do not ask to restore it unless the user explicitly wants secret-management help.

## Notes For Future Changes

- Keep `~/.config/ghostty/config` as the canonical Ghostty source.
- Prefer preserving the current dark Catppuccin-like visual language unless the user asks for a new theme.
- Before pushing updates, rerun a secret scan for token, password, key, and credential patterns.
- Do not add shell, tmux, prompt, iTerm2, Terminal.app, or other terminal software config unless the user explicitly expands the scope.
