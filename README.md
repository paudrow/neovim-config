# README

This repository sets up [Neovim](https://neovim.io/) with the [LazyVim](https://www.lazyvim.org/).

## Setup

- Install Neovim 0.9.0
  - On Mac, you can use [Homebrew](https://brew.sh/)
  - On Linux, building from source using the `release-0.9` is probably the best option
- Clone this directory to your `~/.config/nvim` directory
  ```bash
  git clone https://github.com/paudrow/neovim-config ~/.config/nvim
  ```
- For icons, install a compatable NerdFont
  - For example:
    ```bash
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
    ```
  - Then run `fc-cache -f -v`
    - On Mac you may have to `brew install fontconfig` first
  - Set your terminal's editor to use the font
- Launch `nvim`
  - You have to use a terminal with rich color support for things to look correct
    - On Mac, iTerm works, but Terminal does not.
  - Download plugins: `:Lazy sync`
  - Setup GitHub Copilot: `:Copilot setup`

## Usage

- Whichkey popup shows you options from there
- The leader key is the spacebar
  - `<leader>e` opens a file explorer
  - `<leader>gg` opens [Lazygit](https://github.com/jesseduffield/lazygit)
  - `<leader>U` opens [Undotree](https://github.com/mbbill/undotree)
  - `<leader><leader>` for a file fuzzy search
  - `<leader>t`Toggle a checkbox (ie, `- [ ] TODO`)
- Other keyboard shortcuts
  - `,` to toggle folds
  - `s` to seach and jump to key
  - `S` to highlight a given section
  - `<C-space>` to toggle completions
    - Note on Mac, you may have to disable switching the keyboard input
  - `K` in normal mode to explore documentation
    - Press `K` again to navigate to the floating window
  - `<C-\>` to toggle a terminal
  - In visual mode, `<C-n>` to enter multi cursor
    - `n/p` to go to the next/previous
    - `q` to skip; `Q` to deselect
  - In visual line mode, use `J/K` to drag highlighted lines around
  - In normal mode, use ctrl with up or down to make multiple cursors
  - Harpoon: quick file switcher
    - View with `<leader>Hm`
    - Add with `<leader>Ha`
    - Switch with `<leader>Hh/t/n/s>`
- Autosave is enabled by default
  - Can be toggled with `<leader>T`
- Plugins are managed by [Lazy](https://github.com/folke/lazy.nvim)
- Autocomplete is done by LSPs which are handled by [Mason](https://github.com/williamboman/mason.nvim)

## Rationale

### Why Neovim instead of VS Code?

On large Rust projects, I was experiencing significant slowdowns with the LSP, making the project almost unworkable.
With Neovim, the performance is notably better.

Also, [Undotree](https://github.com/mbbill/undotree) is pretty great and I don't see anything similar in VS Code.
