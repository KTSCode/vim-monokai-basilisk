# vim-monokai-phoenix

A  monokai theme for Vim, based on [Monokai-phoenix](https://github.com/Reewr/vim-monokai-phoenix)

## Installation

Using Plug, you can do the following:

```vim
Plug 'ktscode/vim-monokai-acorns'
```

Then do :PlugInstall and you're good to go

## Issues

Below follows issues that are outside of my control.

- [nvim-qt#145](https://github.com/equalsraf/neovim-qt/issues/145) does not apply terminal cursor colour correctly. This is specific to this application and I can therefore not apply a fix directly. There is however a fix for it: `hi TermCursor cterm=reverse gui=reverse` should display the cursor correctly.
