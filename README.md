# vim-monokai-basilisk

A monokai theme for Vim and Neovim, based on [Monokai-phoenix](https://github.com/Reewr/vim-monokai-phoenix).

## Features

- Native Lua colorscheme for Neovim (0.9+) with VimScript fallback for Vim
- Treesitter highlight groups
- LSP semantic token highlights
- Diagnostics with undercurl support
- Language-specific highlights for Elixir, Markdown, and YAML
- Plugin integrations: telescope, nvim-cmp, gitsigns, indent-blankline, coc.nvim, render-markdown
- Configurable transparency, italic styles, and per-plugin toggles
- `on_colors` and `on_highlights` hooks for full customization

## Requirements

- Neovim >= 0.9 (for Lua colorscheme support)
- `termguicolors` enabled (set automatically by the theme)
- Vim 8+ also supported via the legacy VimScript colorscheme

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "KTSCode/vim-monokai-basilisk",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("monokai-basilisk")
  end,
}
```

With custom options:

```lua
{
  "KTSCode/vim-monokai-basilisk",
  lazy = false,
  priority = 1000,
  config = function()
    require("monokai-basilisk").setup({
      transparent = true,
      styles = {
        comments = { italic = false },
      },
      plugins = {
        telescope = true,
        cmp = true,
        gitsigns = true,
      },
    })
    vim.cmd.colorscheme("monokai-basilisk")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "KTSCode/vim-monokai-basilisk",
  config = function()
    vim.cmd.colorscheme("monokai-basilisk")
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'KTSCode/vim-monokai-basilisk'
```

Then add to your config:

```vim
colorscheme monokai-basilisk
```

### Manual

Clone the repository into your Neovim packages directory:

```sh
git clone https://github.com/KTSCode/vim-monokai-basilisk \
  ~/.local/share/nvim/site/pack/plugins/start/vim-monokai-basilisk
```

## Configuration

Call `setup()` **before** loading the colorscheme. All options are optional.

```lua
require("monokai-basilisk").setup({
  -- Enable transparent background
  transparent = false,

  -- Font style overrides
  styles = {
    comments = { italic = true },
    keywords = { italic = false },
    functions = { italic = false },
    strings = { italic = false },
  },

  -- Toggle plugin integrations (all enabled by default)
  plugins = {
    coc = true,
    telescope = true,
    cmp = true,
    gitsigns = true,
    indent_blankline = true,
    render_markdown = true,
  },

  -- Override palette colors
  on_colors = function(colors)
    -- colors.green = { gui = "#A6E22E", cterm = 118 }
  end,

  -- Override highlight groups
  on_highlights = function(highlights, colors)
    -- highlights.Normal = { fg = colors.fg.gui, bg = "#1a1a1a" }
  end,
})

vim.cmd.colorscheme("monokai-basilisk")
```

## Plugin Support

The theme includes highlight groups for:

- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [coc.nvim](https://github.com/neoclide/coc.nvim)
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)

## Issues

- [nvim-qt#145](https://github.com/equalsraf/neovim-qt/issues/145) does not apply terminal cursor color correctly. This is specific to this application and I can therefore not apply a fix directly. There is however a fix for it: `hi TermCursor cterm=reverse gui=reverse` should display the cursor correctly.
