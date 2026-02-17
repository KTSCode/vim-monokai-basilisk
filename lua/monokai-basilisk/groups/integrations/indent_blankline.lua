-- indent-blankline.nvim (ibl) plugin highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    IblIndent    = { fg = c.brown.gui, ctermfg = c.brown.cterm },
    IblWhitespace = { fg = c.brown.gui, ctermfg = c.brown.cterm },
    IblScope     = { fg = c.base5.gui, ctermfg = c.base5.cterm },
  }
end

return M
