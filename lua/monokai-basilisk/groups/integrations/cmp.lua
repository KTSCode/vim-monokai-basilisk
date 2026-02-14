-- nvim-cmp plugin highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    CmpItemAbbr              = { fg = c.fg.gui },
    CmpItemAbbrDeprecated    = { fg = c.comment.gui, strikethrough = true },
    CmpItemAbbrMatch         = { fg = c.yellow.gui, bold = true },
    CmpItemAbbrMatchFuzzy    = { fg = c.yellow.gui, bold = true },
    CmpItemMenu              = { fg = c.comment.gui },

    CmpItemKindDefault       = { fg = c.fg.gui },
    CmpItemKindText          = { fg = c.fg.gui },
    CmpItemKindFunction      = { fg = c.light_purple.gui },
    CmpItemKindMethod        = { fg = c.light_purple.gui },
    CmpItemKindVariable      = { fg = c.fg.gui },
    CmpItemKindClass         = { fg = c.blue.gui },
    CmpItemKindInterface     = { fg = c.blue.gui },
    CmpItemKindModule        = { fg = c.blue.gui },
    CmpItemKindProperty      = { fg = c.fg.gui },
    CmpItemKindKeyword       = { fg = c.blue.gui },
    CmpItemKindConstant      = { fg = c.purple.gui },
    CmpItemKindSnippet       = { fg = c.green.gui },
    CmpItemKindColor         = { fg = c.yellow.gui },
    CmpItemKindFile          = { fg = c.blue.gui },
    CmpItemKindFolder        = { fg = c.blue.gui },
    CmpItemKindEnum          = { fg = c.blue.gui },
    CmpItemKindEnumMember    = { fg = c.purple.gui },
    CmpItemKindStruct        = { fg = c.aqua.gui },
    CmpItemKindValue         = { fg = c.purple.gui },
    CmpItemKindEvent         = { fg = c.blue.gui },
    CmpItemKindOperator      = { fg = c.aqua.gui },
    CmpItemKindTypeParameter = { fg = c.aqua.gui },
    CmpItemKindField         = { fg = c.fg.gui },
    CmpItemKindReference     = { fg = c.light_purple.gui },
    CmpItemKindUnit          = { fg = c.purple.gui },
  }
end

return M
