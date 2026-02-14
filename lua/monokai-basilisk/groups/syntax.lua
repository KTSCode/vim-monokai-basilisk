-- Traditional Vim syntax highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    -- Constants
    Constant     = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    Number       = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    Float        = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    Boolean      = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    Character    = { fg = c.green.gui, ctermfg = c.green.cterm },
    String       = { fg = c.green.gui, ctermfg = c.green.cterm },

    -- Types
    Type         = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    Structure    = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    StorageClass = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    TypeDef      = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Identifiers
    Identifier   = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    Function     = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },

    -- Statements
    Statement    = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    Operator     = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    Label        = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    Keyword      = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    Conditional  = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    Repeat       = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    Exception    = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Preprocessor
    PreProc      = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    Include      = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    Define       = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    Macro        = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    PreCondit    = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },

    -- Special
    Special      = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    SpecialChar  = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    Delimiter    = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    Tag          = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Comments
    Comment        = { fg = c.comment.gui, italic = opts.styles.comments.italic, ctermfg = c.comment.cterm, cterm = { italic = opts.styles.comments.italic } },
    SpecialComment = { fg = c.blue.gui, ctermfg = c.blue.cterm },

    -- Misc
    Underlined   = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    Ignore       = {},
    Todo         = { fg = c.fg.gui, bg = c.base1.gui, bold = true, ctermfg = c.fg.cterm, ctermbg = c.base1.cterm, cterm = { bold = true } },
    Error        = { fg = c.fg.gui, bg = c.red.gui, ctermfg = c.fg.cterm, ctermbg = c.red.cterm },
    Debug        = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
  }
end

return M
