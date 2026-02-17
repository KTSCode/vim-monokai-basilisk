-- Monokai Basilisk - A monokai theme for Neovim
-- Maintainer: Kyle San Clemente <kylesanclemente@gmail.com>
-- Repository: https://github.com/KTSCode/vim-monokai-basilisk

local M = {}

---@class MonokaiBasiliskStyleConfig
---@field italic boolean

---@class MonokaiBasiliskConfig
---@field transparent boolean
---@field styles { comments: MonokaiBasiliskStyleConfig, keywords: MonokaiBasiliskStyleConfig, functions: MonokaiBasiliskStyleConfig, strings: MonokaiBasiliskStyleConfig }
---@field on_colors fun(colors: MonokaiBasiliskPalette)
---@field on_highlights fun(highlights: table<string, table>, colors: MonokaiBasiliskPalette)
---@field plugins table<string, boolean>

---@type MonokaiBasiliskConfig
M.config = {
  transparent = false,
  styles = {
    comments = { italic = true },
    keywords = { italic = false },
    functions = { italic = false },
    strings = { italic = false },
  },
  on_colors = function(_) end,
  on_highlights = function(_, _) end,
  plugins = {
    coc = true,
    telescope = true,
    cmp = true,
    gitsigns = true,
    indent_blankline = true,
    render_markdown = true,
  },
}

---@param opts? table
function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  -- Clear prior highlights when reloading
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "monokai-basilisk"

  local palette = require("monokai-basilisk.palette").get()

  -- Allow user to override palette colors
  M.config.on_colors(palette)

  local groups = require("monokai-basilisk.groups").get(palette, M.config)

  -- Allow user to override highlight groups
  M.config.on_highlights(groups, palette)

  -- Apply all highlight groups
  for group, hl in pairs(groups) do
    if type(hl) == "string" then
      hl = { link = hl }
    end
    vim.api.nvim_set_hl(0, group, hl)
  end

  -- Set terminal colors
  M.set_terminal_colors(palette)
end

---@param c MonokaiBasiliskPalette
function M.set_terminal_colors(c)
  vim.g.terminal_color_0  = c.base1.gui    -- black
  vim.g.terminal_color_1  = c.red.gui      -- red
  vim.g.terminal_color_2  = c.green.gui    -- green
  vim.g.terminal_color_3  = c.yellow.gui   -- yellow
  vim.g.terminal_color_4  = c.blue.gui     -- blue
  vim.g.terminal_color_5  = c.purple.gui   -- magenta
  vim.g.terminal_color_6  = c.aqua.gui     -- cyan
  vim.g.terminal_color_7  = c.white.gui    -- white
  vim.g.terminal_color_8  = c.grey.gui     -- bright black
  vim.g.terminal_color_9  = c.red.gui      -- bright red
  vim.g.terminal_color_10 = c.green.gui    -- bright green
  vim.g.terminal_color_11 = c.yellow.gui   -- bright yellow
  vim.g.terminal_color_12 = c.blue.gui     -- bright blue
  vim.g.terminal_color_13 = c.light_purple.gui -- bright magenta
  vim.g.terminal_color_14 = c.aqua.gui     -- bright cyan
  vim.g.terminal_color_15 = c.white.gui    -- bright white
end

return M
