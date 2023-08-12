# README

This is my configuration for [Neovim](https://neovim.io/) using [LazyVim](https://www.lazyvim.org/).

## Features

- Autocomplete setup with an LSP and Copilot
- Debugging with DAP
- Lazygit for quick Git access
- Shortcut keys to show a terminal
- Whichkey for quick key lookup
- UndoTree for viewing the undo history

## Setup

1. Make sure that you have met [LazyVim's requirements](https://www.lazyvim.org/#%EF%B8%8F-requirements).
    - Install a Nerd font with
        ```bash
        mkdir -p ~/.local/share/fonts
        cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
        fc-cache -f -v
        ```
2. Clone this repository into `~/.config/nvim`.
3. Open Neovim with `nvim`.

## Usage notes

- To see all key mappings, type `:Whichkey`.
- Leader key is set to `space`.
    - `<leader>e` to open a file explorer. Use `?` to see commands.
    - `<leader>gg` to open Lazygit. Use `?` to see commands.
    - `<leader>d` to enter debug panel. 
    - `<leader>h` to enter harpoon for switching quickly between files.
    - `<leader>c` for code related suggestions.
        - `<leader>ca` to see code actions.
    - `<leader>s` to search for things.
    - `<leader>u` to access a menu to toggle different parts of the UI.
    - `<leader>U` to toggle UndoTree.
    - `<leader><leader>` to open a fuzzy file finder.
    - `<leader>b` to access buffer commands, such as close
- `z=` to get spelling suggestions. See more [here](https://neovim.io/doc/user/spell.html).
    - `zg` to add a word to the dictionary.
    - `zw` to mark a word as incorrect.
- Great key maps
    - Any mode
      - `<ctrl-/>` to toggle a terminal view.
      - `<ctrl-s>` to save and format.
    - Normal mode
        - `<C-p>d` gets the current date (yyyy-mm-dd).
        - `s` jump to location.
        - `S` highlight nested level.
        - `K` to look up types and documentation. `K` again to enter the documentation buffer.
    - Visual mode
        - `J` or `K` to move the selected lines up or down.
        - `gza` to add surrounding; `gzd` to delete surrounding.
        - `<ctrl-n>` to create multiple cursors matching the current selection. Press `q` to skip the current selection.


## Organization

- [`./lua/config/lazy.lua`](./lua/config/lazy.lua) for adding lazy plugin packages
- [`./lua/config/keymaps.lua`](./lua/config/keymaps.lua) for key mappings that are not plugin specific.
- [`./lua/config/options.lua`](./lua/config/options.lua) for setting VIM options.
- [`./lua/plugins/`](./lua//plugins) for loading additional plugins and setting their options.
    - See merging rules [here](https://www.lazyvim.org/configuration/plugins#%EF%B8%8F-customizing-plugin-specs).
- [`./after/plugin/`](./after/plugin/) for setting key maps after a plugin has been loaded.

