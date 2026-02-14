-- coc.nvim plugin highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    CocFloating = { fg = c.diff_remove.gui, bg = c.diff_text.gui, ctermfg = c.grey.cterm, ctermbg = c.base2.cterm },
    CocMenuSel  = { fg = c.green.gui, bg = c.base1.gui, ctermfg = c.green.cterm, ctermbg = c.base1.cterm },
  }
end

return M
