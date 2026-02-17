-- Diagnostic and LSP highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    -- Diagnostics (base)
    DiagnosticError            = { fg = c.red.gui, ctermfg = c.red.cterm },
    DiagnosticWarn             = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },
    DiagnosticInfo             = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    DiagnosticHint             = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    DiagnosticOk               = { fg = c.green.gui, ctermfg = c.green.cterm },

    -- Virtual text
    DiagnosticVirtualTextError = { fg = c.red.gui, ctermfg = c.red.cterm },
    DiagnosticVirtualTextWarn  = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },
    DiagnosticVirtualTextInfo  = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    DiagnosticVirtualTextHint  = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    DiagnosticVirtualTextOk    = { fg = c.green.gui, ctermfg = c.green.cterm },

    -- Underline
    DiagnosticUnderlineError   = { undercurl = true, sp = c.red.gui, cterm = { undercurl = true } },
    DiagnosticUnderlineWarn    = { undercurl = true, sp = c.yellow.gui, cterm = { undercurl = true } },
    DiagnosticUnderlineInfo    = { undercurl = true, sp = c.blue.gui, cterm = { undercurl = true } },
    DiagnosticUnderlineHint    = { undercurl = true, sp = c.aqua.gui, cterm = { undercurl = true } },
    DiagnosticUnderlineOk      = { undercurl = true, sp = c.green.gui, cterm = { undercurl = true } },

    -- Floating windows
    DiagnosticFloatingError    = { fg = c.red.gui, ctermfg = c.red.cterm },
    DiagnosticFloatingWarn     = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },
    DiagnosticFloatingInfo     = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    DiagnosticFloatingHint     = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    DiagnosticFloatingOk       = { fg = c.green.gui, ctermfg = c.green.cterm },

    -- Sign column
    DiagnosticSignError        = { fg = c.red.gui, ctermfg = c.red.cterm },
    DiagnosticSignWarn         = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },
    DiagnosticSignInfo         = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    DiagnosticSignHint         = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    DiagnosticSignOk           = { fg = c.green.gui, ctermfg = c.green.cterm },

    -- Special
    DiagnosticDeprecated       = { strikethrough = true, cterm = { strikethrough = true } },
    DiagnosticUnnecessary      = { fg = c.comment.gui, ctermfg = c.comment.cterm },

    -- LSP references
    LspReferenceText           = { bg = c.base5.gui, ctermbg = c.base5.cterm },
    LspReferenceRead           = { bg = c.base5.gui, ctermbg = c.base5.cterm },
    LspReferenceWrite          = { bg = c.base5.gui, underline = true, ctermbg = c.base5.cterm, cterm = { underline = true } },

    -- LSP misc
    LspCodeLens                = { fg = c.comment.gui, ctermfg = c.comment.cterm },
    LspCodeLensSeparator       = { fg = c.comment.gui, ctermfg = c.comment.cterm },
    LspSignatureActiveParameter = { fg = c.yellow.gui, bold = true, ctermfg = c.yellow.cterm, cterm = { bold = true } },
    LspInlayHint               = { fg = c.comment.gui, italic = true, ctermfg = c.comment.cterm, cterm = { italic = true } },
  }
end

return M
