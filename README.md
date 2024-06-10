
# Neovim Personal Configuration

Welcome to my personal Neovim configuration repository! This README will guide you through setting up and installing all necessary packages and Language Server Protocol (LSP) servers.

## Prerequisites

- **Neovim**: Make sure you have Neovim installed. This configuration is tested on version 0.5 and above.
- **Packer**: This is the plugin manager used for managing Neovim plugins. You can install Packer by following the instructions [here](https://github.com/wbthomason/packer.nvim).
- **Mason**: This tool is used to manage LSP servers, linters, and formatters. You can find Mason [here](https://github.com/williamboman/mason.nvim).

## Installation

### 1. Clone this repository

```sh
git clone https://github.com/yourusername/neovim-config.git ~/.config/nvim
```

### 2. Install Packer

If you haven't installed Packer yet, run the following command to install it:

```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### 3. Install plugins

Open Neovim and run the following command to install the plugins:

```sh
:PackerSync
```

This will automatically download and install all the plugins specified in the `packer.lua` file.

### 4. Install LSP servers

Use Mason to install the required LSP servers. Open Neovim and run:

```sh
:Mason
```

This will open the Mason window where you can install the desired LSP servers. You can also install servers directly by running:

```sh
:MasonInstall <server-name>
```

Replace `<server-name>` with the specific LSP server you need, for example:

```sh
:MasonInstall pyright
```

## Plugin List

Here is a list of all plugins included in this configuration:

- **packer.nvim**: A plugin manager for Neovim.
- **nvim-treesitter/nvim-treesitter**: Treesitter configurations and abstraction layer.
- **nvim-telescope/telescope.nvim**: A highly extendable fuzzy finder over lists.
- **neovim/nvim-lspconfig**: Quickstart configurations for the Neovim LSP client.
- **hrsh7th/nvim-cmp**: A completion plugin for Neovim written in Lua.
- **hrsh7th/cmp-nvim-lsp**: LSP source for nvim-cmp.
- **hrsh7th/cmp-buffer**: Buffer completions source for nvim-cmp.
- **hrsh7th/cmp-path**: Path completions source for nvim-cmp.
- **hrsh7th/cmp-cmdline**: Cmdline completions source for nvim-cmp.
- **saadparwaiz1/cmp_luasnip**: Snippets source for nvim-cmp.
- **L3MON4D3/LuaSnip**: Snippets plugin written in Lua.
- **nvim-lualine/lualine.nvim**: A blazing fast and easy to configure Neovim statusline.
- **kyazdani42/nvim-tree.lua**: A file explorer tree for Neovim.
- **lewis6991/gitsigns.nvim**: Git integration for buffers.
- **akinsho/bufferline.nvim**: A snazzy buffer line for Neovim.
- **nvim-lua/plenary.nvim**: Useful lua functions used by lots of plugins.
- **nvim-telescope/telescope-fzf-native.nvim**: FZF sorter for telescope written in C.
- **williamboman/mason.nvim**: Portable package manager for Neovim that runs everywhere Neovim runs.
- **williamboman/mason-lspconfig.nvim**: Extension to mason.nvim that makes it easier to use lspconfig with mason.

## Configuration

This configuration includes settings for various plugins and LSP servers. You can find and modify these settings in the following files:

- **init.lua**: Main configuration file
- **packer.lua**: Plugin management file
- **lsp.lua**: LSP server configurations

Feel free to explore and customize these files to fit your needs.

## Features

- **Enhanced Editing Experience**: Keybindings, auto-completion, and syntax highlighting.
- **LSP Support**: Built-in support for multiple programming languages.
- **File Explorer**: Integrated file explorer for easy navigation.
- **Git Integration**: Git signs and commands within Neovim.
- **Terminal Integration**: Use Neovim as a terminal emulator.
- **Debugger**: Full-fledged DAP integration.

## Contributing

If you have any suggestions or improvements, feel free to open an issue or submit a pull request.

## Acknowledgements

- Thanks to all the plugin authors for their amazing work.
- Special thanks to the Neovim community for continuous support and improvements.

---

Happy coding!

If you have any questions or need further assistance, please feel free to reach out.

---

Enjoy your personalized Neovim experience!
