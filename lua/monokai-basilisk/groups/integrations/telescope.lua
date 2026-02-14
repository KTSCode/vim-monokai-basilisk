-- telescope.nvim plugin highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    TelescopeNormal         = { fg = c.fg.gui, bg = c.base1.gui },
    TelescopeBorder         = { fg = c.diff_remove.gui, bg = c.base1.gui },
    TelescopeTitle          = { fg = c.blue.gui, bold = true },

    TelescopePromptNormal   = { fg = c.fg.gui, bg = c.base2.gui },
    TelescopePromptBorder   = { fg = c.diff_remove.gui, bg = c.base2.gui },
    TelescopePromptTitle    = { fg = c.green.gui, bg = c.base2.gui, bold = true },
    TelescopePromptPrefix   = { fg = c.aqua.gui, bg = c.base2.gui },
    TelescopePromptCounter  = { fg = c.grey.gui },

    TelescopeResultsNormal  = { fg = c.fg.gui, bg = c.base1.gui },
    TelescopeResultsBorder  = { fg = c.diff_remove.gui, bg = c.base1.gui },
    TelescopeResultsTitle   = { fg = c.blue.gui, bg = c.base1.gui },

    TelescopePreviewNormal  = { fg = c.fg.gui, bg = c.base1.gui },
    TelescopePreviewBorder  = { fg = c.diff_remove.gui, bg = c.base1.gui },
    TelescopePreviewTitle   = { fg = c.aqua.gui, bg = c.base1.gui },

    TelescopeSelection      = { fg = c.blue.gui, bg = c.base5.gui },
    TelescopeSelectionCaret = { fg = c.green.gui, bg = c.base5.gui },
    TelescopeMultiSelection = { fg = c.purple.gui, bg = c.base5.gui },
    TelescopeMatching       = { fg = c.yellow.gui, bold = true },
  }
end

return M
