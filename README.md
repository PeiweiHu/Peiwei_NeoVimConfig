# Peiwei_NeoVimConfig

<p align='center'>
<img width="85%" alt="banner" src="https://github.com/PeiweiHu/Peiwei_NeoVimConfig/assets/58985155/74cffe67-737a-4256-b98d-acfe43289a0d">
<img width="85%" alt="edit area" src="https://github.com/PeiweiHu/Peiwei_NeoVimConfig/assets/58985155/7caa541e-0159-4490-a362-9da00b5122c1">
</p>

## Setup

### Step 0. Requirements

+ NeoVim with version 0.8.0 or higher
+ [Ripgrep](https://github.com/BurntSushi/ripgrep) installed (required by Telescope)

### Step 1. Install Package Manager - Packer

We use packer.nvim to manage various plugins, you can refer to [this](https://github.com/wbthomason/packer.nvim) for installing.

### Step 2. Clone This Repository

```
git clone https://github.com/PeiweiHu/Peiwei_NeoVimConfig.git ~/.config/nvim
```

### Step 3. Install Plugins

Type `:PackerSync` to install required plugins after entering nvim.

### Step 4. Enjoy Coding

Until now, your editor should start working with rich convenient features. Note that there are language-specific features, such as syntax highlighting, that you may need to further set up depending on your desired language, see the section below (Setup for New language).

## Project Structure

```bash
├── README.md  # the file you are reading
├── init.lua  # initialization file of nvim, reference all other config files
├── lua
│   ├── keybindings.lua  # setup keybindings
│   ├── options.lua  # tweak the default settings of nvim
│   ├── plugin-config  # contain the config files of plugins
│   │   ├── bookmarks.lua  # bookmarks plugin
│   │   ├── bufferline.lua  # make the buffer act like a label page
│   │   ├── gitsigns.lua  # git-realted support
│   │   ├── lspsaga.lua  # enhance lsp experience, scan this file for lsp-related shortcuts
│   │   ├── lualine.lua  # the status line
│   │   ├── mason-lspconfig.lua  # lsp support
│   │   ├── mason.lua  # lsp support
│   │   ├── nvim-cmp.lua  # autocomplete support
│   │   ├── nvim-lspconfig.lua  # lsp support
│   │   ├── nvim-tree.lua  # file tree
│   │   ├── nvim-treesitter.lua  # highlight support
│   │   ├── startup.lua  # the banner of nvim
│   │   ├── tidy.lua  # remove trailing whitespace and empty line
│   │   └── ufo.lua  # code fold
│   ├── plugins.lua  # the config file of Packer, deciding the used plugins
│   └── theme.lua  # setup themes
```

## Usage

The keymap of various functions is defined in two places including keybindings.lua and the config files of the plugin (e.g., lspsaga.lua). You can use `grep -rn 'keymap' ./` under the root of the project to find the settings.

## Setup for New language

This project support the languages such as C, C++, python as default. There are some stuffs required to do after introducing new languages. Suppose I wanna make this project support html language in the following steps.

### Step 1. Download New LSP Server

Type `:Mason` in nvim and download the lsp server of newly introduced language. For example, if I wanna make this projec support html language, I will choose `html-lsp html` and press `i` for installation.

### Step 2. Enable LSP Client

Append `require('lspconfig').html.setup {}` to `lua/plugin-config/nvim-lspconfig.lua`.

### Step 3. Enable Autocomplete

Append `require('lspconfig')['html'].setup { capabilities = capabilities }` to `lua/plugin-config/nvim-lspconfig.lua`.

### Step 4. Enable Tree-sitter Support

Type `:TSInstall html` in nvim.
