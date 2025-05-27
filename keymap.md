# Neovim Keymap Reference

This document provides a reference for all configured keymaps in my Neovim setup.

## General Navigation & Actions

| Keymap      | Mode   | Description              |
| ----------- | ------ | ------------------------ |
| `<left>`    | Normal | Navigate to previous tab |
| `<right>`   | Normal | Navigate to next tab     |
| `<M-,>`     | Normal | Decrease window width    |
| `<M-.>`     | Normal | Increase window width    |
| `<M-t>`     | Normal | Increase window height   |
| `<M-s>`     | Normal | Decrease window height   |
| `<leader>p` | Visual | Paste over selected text |
| `<leader>x` | Normal | Execute the current file |

## LSP & Diagnostics

| Keymap        | Mode   | Description      |
| ------------- | ------ | ---------------- |
| `<leader>gd`  | Normal | Go to definition |
| `<leader>zig` | Normal | Restart LSP      |
| `<leader>cx`  | Normal | Show diagnostics |

## Telescope

| Keymap       | Mode   | Description                  |
| ------------ | ------ | ---------------------------- |
| `<leader>fb` | Normal | Fuzzy find in current buffer |
| `<leader>ff` | Normal | Live grep search             |
| `<leader>fp` | Normal | Find projects                |

## Buffer Management

| Keymap       | Mode   | Description     |
| ------------ | ------ | --------------- |
| `<leader>bp` | Normal | Previous buffer |
| `<leader>bn` | Normal | Next buffer     |
| `<leader>bc` | Normal | Close buffer    |

## Git

| Keymap       | Mode   | Description                                          |
| ------------ | ------ | ---------------------------------------------------- |
| `<leader>gs` | Normal | Open Git status                                      |
| `<leader>p`  | Normal | Git push (in fugitive buffer)                        |
| `<leader>P`  | Normal | Git pull with rebase (in fugitive buffer)            |
| `<leader>t`  | Normal | Git push with upstream tracking (in fugitive buffer) |
| `gu`         | Normal | Get diff from left side (//2) during merge conflict  |
| `gh`         | Normal | Get diff from right side (//3) during merge conflict |

## Commenting

| Keymap      | Mode             | Description                       |
| ----------- | ---------------- | --------------------------------- |
| `gcc`       | Normal           | Comment toggle current line       |
| `gc`        | Normal, Operator | Comment toggle linewise           |
| `gc`        | Visual           | Comment toggle linewise (visual)  |
| `gbc`       | Normal           | Comment toggle current block      |
| `gb`        | Normal, Operator | Comment toggle blockwise          |
| `gb`        | Visual           | Comment toggle blockwise (visual) |
| `<leader>/` | Normal           | Toggle comment                    |
| `<leader>/` | Visual           | Toggle comment                    |

## Debugging

| Keymap       | Mode   | Description           |
| ------------ | ------ | --------------------- |
| `<leader>db` | Normal | Toggle breakpoint     |
| `<leader>dc` | Normal | Start/Continue debug  |
| `<leader>di` | Normal | Step into             |
| `<leader>do` | Normal | Step over             |
| `<leader>dO` | Normal | Step out              |
| `<leader>dr` | Normal | Open REPL             |
| `<leader>dl` | Normal | Run last debug config |
| `<leader>du` | Normal | Toggle DAP UI         |

## Completion

| Keymap      | Mode   | Description                                  |
| ----------- | ------ | -------------------------------------------- |
| `<C-p>`     | Insert | Select previous item in completion menu      |
| `<C-n>`     | Insert | Select next item in completion menu          |
| `<C-y>`     | Insert | Confirm selection in completion menu         |
| `<C-Space>` | Insert | Complete                                     |
| `<Tab>`     | Insert | Select next item or expand snippet           |
| `<S-Tab>`   | Insert | Select previous item or jump back in snippet |
| `<Tab>`     | Insert | Accept Copilot suggestion line               |

## Trouble.nvim

| Keymap                   | Mode | Description |
| ------------------------ | ---- | ----------- |
| Uses default keybindings |      |             |

## Which Key

| Keymap     | Mode   | Description                |
| ---------- | ------ | -------------------------- |
| `<leader>` | Normal | Show available keybindings |

## Notes

- Many of these keymaps depend on `<leader>` key, which is mapped to space.
- Some keymaps are context-specific and only work in certain buffers or modes.
- The configuration uses `which-key.nvim` to help remember and discover keybindings.
- LSP keybindings may vary depending on the language server in use.
- Copilot suggestion line acceptance uses `<Tab>` as configured in the copilot.lua plugin.
