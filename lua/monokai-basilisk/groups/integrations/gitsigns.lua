-- gitsigns.nvim plugin highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    GitSignsAdd          = { fg = c.green.gui, ctermfg = c.green.cterm },
    GitSignsChange       = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },
    GitSignsDelete       = { fg = c.red.gui, ctermfg = c.red.cterm },

    GitSignsAddNr        = { fg = c.green.gui, ctermfg = c.green.cterm },
    GitSignsChangeNr     = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },
    GitSignsDeleteNr     = { fg = c.red.gui, ctermfg = c.red.cterm },

    GitSignsAddLn        = { bg = c.base3.gui, ctermbg = c.base3.cterm },
    GitSignsChangeLn     = { bg = c.base4.gui, ctermbg = c.base4.cterm },
    GitSignsDeleteLn     = { bg = c.base4.gui, ctermbg = c.base4.cterm },

    GitSignsCurrentLineBlame = { fg = c.comment.gui, italic = true, ctermfg = c.comment.cterm, cterm = { italic = true } },
  }
end

return M
