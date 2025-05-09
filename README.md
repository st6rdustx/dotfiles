# dotfiles

This repository contains my personal dotfiles, managed with GNU Stow. These configuration files help set up a consistent development environment across different machines.

## Requirements

- [Git](https://git-scm.com)
- [GNU Stow](https://www.gnu.org/software/stow/)
- Zsh
- [Homebrew](https://brew.sh/)

## Installation

### 1. Clone the repository

Clone this repository to your home directory:

```bash
git clone https://github.com/st6rdustx/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Install GNU Stow if not already installed

On macOS with Homebrew:

```bash
brew install stow
```

### 3. Backup your existing configuration (optional but recommended)

```bash
mkdir -p ~/dotfiles-backup
cp -r ~/{.zshrc,.vimrc,.gitconfig,Brewfile,.config/nvim,.config/omp.yaml,.config/gh-dash,.config/ghostty} ~/dotfiles-backup/ 2>/dev/null || echo \"Backup done\"
```

### 4. Remove existing configuration files

```bash
rm -f ~/.zshrc ~/.vimrc ~/.gitconfig ~/.gitignore ~/Brewfile
rm -rf ~/.config/nvim ~/.config/omp.yaml ~/.config/gh-dash ~/.config/ghostty
```

### 5. Create symbolic links with Stow

```bash
cd ~/dotfiles
stow zsh vim git brew nvim omp gh ghostty
```

Alternatively, to stow all packages at once, you can use:

```bash
cd ~/dotfiles
for dir in */; do
  stow "${dir%/}"
done
```

### 6. Install required packages

```bash
brew bundle --file=~/dotfiles/brew/Brewfile
```

### 7. Set up Colima for Docker

```bash
brew services start colima
```

## What's Included

This dotfiles repository includes configurations for:

- **zsh**: Shell configuration (.zshrc) with aliases and environment setup
- **vim**: Vim editor configuration (.vimrc)
- **git**: Git configuration (.gitconfig) with useful aliases and settings
- **brew**: Homebrew packages and settings (Brewfile)
- **nvim**: Neovim configuration (.config/nvim) with plugins for LSP, completion, Git and more
- **oh my posh**: Oh My Posh theme configuration (.config/omp.yaml)
- **gh dash**: GitHub CLI "dash" extension configuration (.config/gh-dash/config.yml)
- **ghostty**: Fast, feature-rich, and cross-platform terminal emulator that uses platform-native UI and GPU acceleration configuration (.config/ghostty/config)

## Key Features

- **Neovim Configuration**:

  - LSP support with autocomplete and diagnostics
  - Treesitter for better syntax highlighting
  - Git integration with fugitive and gitsigns
  - Telescope for fuzzy finding
  - DAP for debugging
  - Project management and more

- **GitHub Integration**:

  - GitHub CLI configuration
  - Dash for managing PRs and issues

- **Development Environment**:

  - Docker container support via Colima
  - Language servers for multiple languages

- **Zsh Enhancements**:

  - Zinit for plugin management
  - Useful aliases and functions
  - Integration with fzf for fuzzy finding

## Neovim Keymap

A full keymap reference is available in [keymap.md](keymap.md).

## Usage

### Adding new dotfiles

1. Add the file to the appropriate directory in the dotfiles repository
2. Run stow to create the symbolic link:
   ```bash
   cd ~/dotfiles
   stow [package_name]
   ```

### Updating dotfiles

1. Make changes to the files in the dotfiles repository
2. The changes will be automatically reflected since they're symlinked

### Removing configurations

To remove the symlinks for a specific package:

```bash
cd ~/dotfiles
stow -D [package_name]
```

### Restowing configurations

If you've made changes to the directory structure:

```bash
cd ~/dotfiles
stow -R [package_name]
```

## Managing Dotfiles

When you want to make changes to your configuration:

1. Edit the files in the `~/dotfiles` directory
2. Commit and push your changes to keep your repository updated
3. On a new machine, simply clone the repository and follow the installation instructions
