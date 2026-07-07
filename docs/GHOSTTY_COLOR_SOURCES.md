# Ghostty Color Sources

This document explains why text in Ghostty appears colored on this machine. The colors are not embedded in the font file. The font provides glyphs; color comes from the terminal palette and shell/program themes.

## Root Cause

- Ghostty supplies the base ANSI palette, background, foreground, cursor, and selection colors.
- Oh My Zsh is loaded, but its prompt theme is disabled with `ZSH_THEME=""`.
- The colored prompt comes from Starship, using the `catppuccin_mocha` palette in `~/.config/starship.toml`.
- Command-line syntax colors come from `zsh-syntax-highlighting` styles configured in `~/.zshrc`.
- Completion menu colors come from zsh `zstyle` rules.
- File listing colors come from `vivid generate catppuccin-mocha`, exported as `LS_COLORS`, then used by `eza`.
- `bat` output uses `BAT_THEME="Catppuccin Mocha"`.

## Ghostty Font And Base Colors

Source file: `~/.config/ghostty/config`

| Setting | Value |
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
| `bold-is-bright` | `true` |

## Font Link

The active Ghostty font family is `MesloLGS NF`. This repository records the font configuration and links, but does not store font binaries.

- Powerlevel10k MesloLGS NF guide: https://github.com/romkatv/powerlevel10k/blob/master/font.md
- MesloLGS NF Regular TTF reference: https://github.com/romkatv/powerlevel10k-media/blob/master/MesloLGS%20NF%20Regular.ttf

## Starship Prompt Color Source

Source file: `~/.config/starship.toml`

```toml
palette = 'catppuccin_mocha'

[palettes.catppuccin_mocha]
rosewater = "#f5e0dc"
flamingo = "#f2cdcd"
pink = "#f5c2e7"
mauve = "#cba6f7"
red = "#f38ba8"
maroon = "#eba0ac"
peach = "#fab387"
yellow = "#f9e2af"
green = "#a6e3a1"
teal = "#94e2d5"
sky = "#89dceb"
sapphire = "#74c7ec"
blue = "#89b4fa"
lavender = "#b4befe"
text = "#cdd6f4"
subtext1 = "#bac2de"
subtext0 = "#a6adc8"
overlay2 = "#9399b2"
overlay1 = "#7f849c"
overlay0 = "#6c7086"
surface2 = "#585b70"
surface1 = "#45475a"
surface0 = "#313244"
base = "#1e1e2e"
mantle = "#181825"
crust = "#11111b"

```

## Shell Color Sources Without Uploading zshrc

The full `.zshrc` is intentionally not uploaded. These are the relevant non-secret color/source lines only:

```zsh
ZSH_THEME=""  # disabled p10k, using Starship
eval "$(starship init zsh)"
export LS_COLORS="$(vivid generate catppuccin-mocha)"
export LS_COLORS="${LS_COLORS}:*README=0;38;2;249;226;175:*README.md=0;38;2;249;226;175:*README.txt=0;38;2;249;226;175:*CHANGELOG=0;38;2;249;226;175:*CHANGELOG.md=0;38;2;249;226;175:*CHANGELOG.txt=0;38;2;249;226;175:*CHANGES=0;38;2;249;226;175:*CHANGES.md=0;38;2;249;226;175:*CHANGES.txt=0;38;2;249;226;175:*INSTALL=0;38;2;249;226;175:*INSTALL.md=0;38;2;249;226;175:*INSTALL.txt=0;38;2;249;226;175:*CONTRIBUTING=0;38;2;249;226;175:*CONTRIBUTING.md=0;38;2;249;226;175:*CONTRIBUTING.txt=0;38;2;249;226;175:*CONTRIBUTORS=0;38;2;249;226;175:*CONTRIBUTORS.md=0;38;2;249;226;175:*CONTRIBUTORS.txt=0;38;2;249;226;175"
export BAT_THEME="Catppuccin Mocha"
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}" 'ma=48;2;69;71;90;38;2;205;214;244;1'
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:*' format $'%F{#89b4fa}%B%d%b%f'
zstyle ':completion:*' list-prompt $'%F{#6c7086}%S%M matches%s%f'
zstyle ':completion:*' select-prompt $'%F{#6c7086}%Sscroll: %p%s%f'
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|=*' 'l:|=* r:|=*'
typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[default]='fg=#cdd6f4'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#f38ba8,bold'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[alias]='fg=#a6e3a1,bold'
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#a6e3a1,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=#a6e3a1,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=#a6e3a1,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#a6e3a1,italic'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#f38ba8'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#a6e3a1'
ZSH_HIGHLIGHT_STYLES[path]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#fab387'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#fab387'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#fab387'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#89dceb'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#89dceb'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[rc-quote]='fg=#f9e2af'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[assign]='fg=#cba6f7'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#94e2d5,bold'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#6c7086,italic'
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#94e2d5'
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#94e2d5'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#a6e3a1'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#6c7086'
```

## What To Preserve

- Keep Ghostty, Starship, zsh syntax highlighting, vivid, eza, and bat aligned to Catppuccin Mocha.
- Do not upload the full `.zshrc` unless explicitly requested, because it may contain private environment variables.
- Do not upload font binaries unless explicitly requested; links are enough for reproducibility.
