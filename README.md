# Neovim configuration

Personal Neovim configuration inspired by [LazyVim](https://github.com/LazyVim/LazyVim).

This readme tries to serves as a tutorial for myself and anyone else on how to modify and expand upon this configuration. Neovim is not beginner friendly. 

The youtuber [typecraft](https://www.youtube.com/@typecraft_dev) has a very good setup [tutorial](https://youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&si=-VH285-GsVt1oIvj) that helped a lot.

## Introduction

Neovim comes with very little configuration. If you are used to autocompletion, 
proper syntax highlighting and all of the bells and whistles of IDEs (or 
VSCode with 10 extensions), this will feel a little underwhelming.

Neovim requires way more setup, you even need to choose a plugin manager. The good
thing is that after you make your configuration you feel closer to your editor (at
the cost of your sanity and 48 hours of your life).

If this seems a little too much, many editors/IDEs provide vim keymaps, which achieves somewhat similar
results.

You can also download a neovim configuration like this one or [LazyVim](https://github.com/LazyVim/LazyVim).

## Requirements

These are general requirements, some may be optional but I don't remember anymore:

- [Git](https://git-scm.com/)
- [Neovim](https://neovim.io/)
- A true color terminal (24-bit color).
    - iterm for Mac.
- A [nerd font](https://www.nerdfonts.com/font-downloads) for proper icon display.
    - Remember to set up your terminal with the nerd font
- A C compiler.
- For the telescope plugin:
    - [ripgrep](https://github.com/BurntSushi/ripgrep)
    - [fd](https://github.com/sharkdp/fd)

## Plugins

This configuration uses the [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager.

All plugins can be found inside of the `/lua/plugins/` directory, which are just `.lua` files that return a table.  
Then lazy.nvim will merge all of these files into one big table of plugins, and install them after you restart neovim.

### Adding new plugins

To add a plugin follow these steps.

1. Create a new file inside of the `/lua/plugins/` directory with whatever name you want.
2. Return a table like this: 

```lua
return { 
    "githubuser/repository",    
}
```

3. Add the 

TODO: explain how to add new plugins

### List of current plugins

TODO: list all used plugins 

## Keymaps

TODO: consider adding a table for keymaps

TODO: explain how to modify existing keymaps

TODO: unify all keymaps into mappings.lua with which-key https://github.com/folke/which-key.nvim

TODO: add keymaps for lsp https://github.com/neovim/nvim-lspconfig

## LSPs, formatters and linters

TODO: explain how to install LSPs, formatters and linters

## Other

TODO: setup autocompletion https://www.youtube.com/watch?v=upM6FOtdLeU

