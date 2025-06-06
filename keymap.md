# Keymap Reference

This document provides a reference for all configured keymaps in m setup.

## Yabai Window Management

| Keymap            | Description              |
| ----------------- | ------------------------ |
| `opt - t`         | Toggle window float      |
| `opt - x`         | Close window             |
| `opt + shift - h` | Swap window west         |
| `opt + shift - j` | Swap window south        |
| `opt + shift - k` | Swap window north        |
| `opt + shift - l` | Swap window east         |
| `opt + ctrl - h`  | Warp window west         |
| `opt + ctrl - j`  | Warp window south        |
| `opt + ctrl - k`  | Warp window north        |
| `opt + ctrl - l`  | Warp window east         |
| `opt - 1`         | Move window to display 1 |
| `opt - 2`         | Move window to display 2 |

## Neovim

### Leader Key

- **Leader key**: `<Space>`

### Core Navigation & Editing

#### Window Management

| Keymap       | Mode   | Description               |
| ------------ | ------ | ------------------------- |
| `<C-h>`      | Normal | Move to left window       |
| `<C-j>`      | Normal | Move to down window       |
| `<C-k>`      | Normal | Move to up window         |
| `<C-l>`      | Normal | Move to right window      |
| `<leader>sv` | Normal | Split window vertically   |
| `<leader>sh` | Normal | Split window horizontally |
| `<leader>se` | Normal | Make splits equal size    |
| `<leader>sx` | Normal | Close current split       |

#### Tab Management

| Keymap       | Mode   | Description                    |
| ------------ | ------ | ------------------------------ |
| `<leader>to` | Normal | Open new tab                   |
| `<leader>tx` | Normal | Close current tab              |
| `<leader>tn` | Normal | Go to next tab                 |
| `<leader>tp` | Normal | Go to previous tab             |
| `<leader>tf` | Normal | Open current buffer in new tab |

#### Buffer Management

| Keymap       | Mode   | Description                |
| ------------ | ------ | -------------------------- |
| `<Tab>`      | Normal | Next buffer                |
| `<S-Tab>`    | Normal | Previous buffer            |
| `<leader>bd` | Normal | Delete buffer              |
| `<leader>bD` | Normal | Force delete buffer        |
| `<leader>bp` | Normal | Pick buffer                |
| `<leader>bP` | Normal | Close pick buffer          |
| `<leader>bo` | Normal | Close all other buffers    |
| `<leader>br` | Normal | Close buffers to the right |
| `<leader>bl` | Normal | Close buffers to the left  |
| `<S-l>`      | Normal | Move to next buffer        |
| `<S-h>`      | Normal | Move to previous buffer    |

#### Basic Editing

| Keymap       | Mode   | Description             |
| ------------ | ------ | ----------------------- |
| `<leader>nh` | Normal | Clear search highlights |
| `<leader>+`  | Normal | Increment number        |
| `<leader>-`  | Normal | Decrement number        |
| `<leader>w`  | Normal | Save file               |
| `<leader>q`  | Normal | Quit                    |
| `<leader>x`  | Normal | Save and quit           |
| `J`          | Normal | Move line down          |
| `K`          | Normal | Move line up            |
| `>`          | Normal | Indent line             |
| `<`          | Normal | Unindent line           |

### Fuzzy Finder (Snacks.nvim & Telescope)

#### File & Content Search

| Keymap       | Mode   | Description                    |
| ------------ | ------ | ------------------------------ |
| `<leader>ff` | Normal | Find files                     |
| `<leader>fg` | Normal | Live grep                      |
| `<leader>fb` | Normal | Buffers                        |
| `<leader>fh` | Normal | Help tags                      |
| `<leader>fr` | Normal | Recent files                   |
| `<leader>fc` | Normal | Colorschemes                   |
| `<leader>fs` | Normal | Current buffer fuzzy find      |
| `<leader>fw` | Normal | Grep word under cursor         |
| `<leader>fW` | Normal | Grep WORD under cursor         |
| `<leader>fl` | Normal | Resume last search             |
| `<leader>fd` | Normal | Diagnostics                    |
| `<leader>fq` | Normal | Quickfix                       |
| `<leader>fm` | Normal | Marks                          |
| `<leader>fk` | Normal | Keymaps                        |
| `<leader>fo` | Normal | Vim options                    |
| `<leader>fp` | Normal | Projects                       |
| `<leader>fz` | Normal | Fuzzy find in current buffer   |
| `<leader>fn` | Normal | Find in notes                  |
| `<leader>fN` | Normal | New note                       |
| `<leader>ft` | Normal | TODOs                          |
| `<leader>fT` | Normal | TODO/FIX/etc in current buffer |

#### Git Files

| Keymap       | Mode   | Description |
| ------------ | ------ | ----------- |
| `<leader>gf` | Normal | Git files   |
| `<leader>gc` | Normal | Git commits |
| `<leader>gt` | Normal | Git status  |

### LSP (Language Server Protocol)

#### Navigation

| Keymap | Mode   | Description           |
| ------ | ------ | --------------------- |
| `gd`   | Normal | Go to definition      |
| `gD`   | Normal | Go to declaration     |
| `gr`   | Normal | Go to references      |
| `gi`   | Normal | Go to implementation  |
| `gt`   | Normal | Go to type definition |

#### Information

| Keymap      | Mode   | Description           |
| ----------- | ------ | --------------------- |
| `K`         | Normal | Hover documentation   |
| `<C-k>`     | Insert | Signature help        |
| `<leader>D` | Normal | Show line diagnostics |

#### Code Actions

| Keymap       | Mode   | Description   |
| ------------ | ------ | ------------- |
| `<leader>rn` | Normal | Rename symbol |
| `<leader>ca` | Normal | Code action   |
| `<leader>f`  | Normal | Format buffer |
| `<leader>rs` | Normal | Restart LSP   |

#### Diagnostics Navigation

| Keymap      | Mode   | Description         |
| ----------- | ------ | ------------------- |
| `[d`        | Normal | Previous diagnostic |
| `]d`        | Normal | Next diagnostic     |
| `<leader>q` | Normal | Set location list   |

### Git Integration (Fugitive)

| Keymap       | Mode   | Description          |
| ------------ | ------ | -------------------- |
| `<leader>gs` | Normal | Git status (:Git)    |
| `<leader>gv` | Normal | Git vertical split   |
| `<leader>gh` | Normal | Git horizontal split |
| `<leader>gb` | Normal | Git blame            |
| `<leader>gd` | Normal | Git diff             |
| `<leader>gl` | Normal | Git log              |
| `<leader>gp` | Normal | Git push             |
| `<leader>gP` | Normal | Git pull             |

### Debugging (DAP)

#### Debug Control

| Keymap       | Mode   | Description              |
| ------------ | ------ | ------------------------ |
| `<F5>`       | Normal | Continue/Start debugging |
| `<F10>`      | Normal | Step over                |
| `<F11>`      | Normal | Step into                |
| `<F12>`      | Normal | Step out                 |
| `<leader>dt` | Normal | Terminate debugging      |

#### Breakpoints

| Keymap       | Mode   | Description                |
| ------------ | ------ | -------------------------- |
| `<leader>b`  | Normal | Toggle breakpoint          |
| `<leader>B`  | Normal | Set conditional breakpoint |
| `<leader>lp` | Normal | Log point                  |

#### Debug UI

| Keymap       | Mode   | Description            |
| ------------ | ------ | ---------------------- |
| `<leader>dr` | Normal | Open REPL              |
| `<leader>dl` | Normal | Run last debug session |
| `<leader>dh` | Normal | Hover variables        |
| `<leader>dp` | Normal | Preview variables      |
| `<leader>df` | Normal | Frames                 |
| `<leader>ds` | Normal | Scopes                 |

### Terminal

| Keymap       | Mode   | Description         |
| ------------ | ------ | ------------------- |
| `<leader>tt` | Normal | Toggle terminal     |
| `<leader>th` | Normal | Horizontal terminal |
| `<leader>tv` | Normal | Vertical terminal   |
| `<leader>tf` | Normal | Float terminal      |
| `<C-/>`      | Normal | Toggle terminal     |

### Comments (Comment.nvim)

#### Normal Mode

| Keymap | Mode                 | Description          |
| ------ | -------------------- | -------------------- |
| `gcc`  | Normal               | Toggle line comment  |
| `gbc`  | Normal               | Toggle block comment |
| `gc`   | Normal (with motion) | Line comment         |
| `gb`   | Normal (with motion) | Block comment        |

#### Visual Mode

| Keymap | Mode   | Description          |
| ------ | ------ | -------------------- |
| `gc`   | Visual | Toggle line comment  |
| `gb`   | Visual | Toggle block comment |

### Completion (nvim-cmp)

| Keymap      | Mode   | Description                         |
| ----------- | ------ | ----------------------------------- |
| `<C-b>`     | Insert | Scroll docs backward                |
| `<C-f>`     | Insert | Scroll docs forward                 |
| `<C-Space>` | Insert | Complete                            |
| `<C-e>`     | Insert | Close completion                    |
| `<CR>`      | Insert | Confirm selection                   |
| `<Tab>`     | Insert | Next item/expand snippet            |
| `<S-Tab>`   | Insert | Previous item/jump snippet backward |

### Copilot

#### Insert Mode

| Keymap  | Mode   | Description         |
| ------- | ------ | ------------------- |
| `<M-]>` | Insert | Next suggestion     |
| `<M-[>` | Insert | Previous suggestion |
| `<C-]>` | Insert | Dismiss suggestion  |

#### Normal Mode

| Keymap       | Mode   | Description   |
| ------------ | ------ | ------------- |
| `<leader>cp` | Normal | Copilot panel |

### File Explorer & Project Management

| Keymap       | Mode   | Description          |
| ------------ | ------ | -------------------- |
| `<leader>e`  | Normal | Toggle file explorer |
| `<leader>pf` | Normal | Find project files   |
| `<leader>pp` | Normal | Recent projects      |
| `<leader>pa` | Normal | Add project          |
| `<leader>pd` | Normal | Delete project       |
| `<leader>ps` | Normal | Search in project    |
| `<leader>pb` | Normal | Browse project       |

### Productivity & Utilities

#### Quick Actions

| Keymap       | Mode   | Description                 |
| ------------ | ------ | --------------------------- |
| `<leader>ur` | Normal | Toggle relative numbers     |
| `<leader>ul` | Normal | Toggle line numbers         |
| `<leader>uw` | Normal | Toggle word wrap            |
| `<leader>us` | Normal | Toggle spell check          |
| `<leader>un` | Normal | Toggle notifications        |
| `<leader>ui` | Normal | Toggle indent guides        |
| `<leader>uc` | Normal | Toggle concealer            |
| `<leader>uh` | Normal | Toggle inlay hints          |
| `<leader>uT` | Normal | Toggle treesitter highlight |
| `<leader>ub` | Normal | Toggle background           |
| `<leader>ud` | Normal | Toggle diagnostics          |
| `<leader>uf` | Normal | Toggle format on save       |

#### Zen Mode & Focus

| Keymap      | Mode   | Description     |
| ----------- | ------ | --------------- |
| `<leader>z` | Normal | Toggle zen mode |
| `<leader>Z` | Normal | Toggle zoom     |

#### Notifications & Dashboard

| Keymap       | Mode   | Description               |
| ------------ | ------ | ------------------------- |
| `<leader>un` | Normal | Dismiss all notifications |
| `<leader>nh` | Normal | Show notification history |
| `<leader>nd` | Normal | Show dashboard            |

### Text Objects & Motions

#### Custom Text Objects

- `ii` / `ai` - Indent text object
- `if` / `af` - Function text object
- `ic` / `ac` - Class text object
- `i,` / `a,` - Argument text object

#### Quick Navigation

| Keymap  | Mode   | Description       |
| ------- | ------ | ----------------- |
| `<C-u>` | Normal | Half page up      |
| `<C-d>` | Normal | Half page down    |
| `gg`    | Normal | Go to top         |
| `G`     | Normal | Go to bottom      |
| `0`     | Normal | Beginning of line |
| `$`     | Normal | End of line       |

### Visual Mode Enhancements

| Keymap | Mode   | Description           |
| ------ | ------ | --------------------- |
| `J`    | Visual | Move selection down   |
| `K`    | Visual | Move selection up     |
| `>`    | Visual | Indent selection      |
| `<`    | Visual | Unindent selection    |
| `p`    | Visual | Paste without yanking |

### Command Mode

| Keymap  | Mode    | Description                 |
| ------- | ------- | --------------------------- |
| `<C-j>` | Command | Next command in history     |
| `<C-k>` | Command | Previous command in history |

## Notes

- Many of these keymaps depend on `<leader>` key, which is mapped to space.
- Some keymaps are context-specific and only work in certain buffers or modes.
- The configuration uses `which-key.nvim` to help remember and discover keybindings.
- LSP keybindings may vary depending on the language server in use.
- Copilot suggestion line acceptance uses `<Tab>` as configured in the copilot.lua plugin.
