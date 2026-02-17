-- Editor UI highlight groups
-- Covers: Normal, Cursor, StatusLine, Popup, Messages, Spelling, Tabs, Diff, Folding

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  local transparent = opts.transparent

  return {
    -- General
    Normal       = { fg = c.fg.gui, bg = transparent and "NONE" or c.base1.gui, ctermfg = c.fg.cterm, ctermbg = transparent and "NONE" or c.base1.cterm },
    NormalNC     = { link = "Normal" },
    Conceal      = { fg = c.blue.gui, bg = transparent and "NONE" or c.base1.gui, ctermfg = c.blue.cterm, ctermbg = transparent and "NONE" or c.base1.cterm },
    NonText      = { fg = c.base5.gui, ctermfg = c.base5.cterm },
    EndOfBuffer  = { fg = c.base1.gui, ctermfg = c.base1.cterm },
    Whitespace   = { fg = c.base5.gui, ctermfg = c.base5.cterm },

    -- Status line
    StatusLine   = { fg = c.blue.gui, bg = transparent and "NONE" or c.base1.gui, ctermfg = c.blue.cterm, ctermbg = transparent and "NONE" or c.base1.cterm },
    StatusLineNC = { fg = c.base6.gui, bg = transparent and "NONE" or c.base1.gui, ctermfg = c.base6.cterm, ctermbg = transparent and "NONE" or c.base1.cterm },

    -- Search
    Search       = { fg = c.base1.gui, bg = c.yellow.gui, ctermfg = c.base1.cterm, ctermbg = c.yellow.cterm },
    IncSearch    = { fg = c.base1.gui, bg = c.yellow.gui, ctermfg = c.base1.cterm, ctermbg = c.yellow.cterm },
    CurSearch    = { fg = c.base1.gui, bg = c.yellow.gui, bold = true, ctermfg = c.base1.cterm, ctermbg = c.yellow.cterm, cterm = { bold = true } },
    Substitute   = { fg = c.base1.gui, bg = c.yellow.gui, ctermfg = c.base1.cterm, ctermbg = c.yellow.cterm },

    -- Splits and lines
    VertSplit    = { fg = c.diff_remove.gui, ctermfg = c.diff_remove.cterm },
    WinSeparator = { fg = c.diff_remove.gui, ctermfg = c.diff_remove.cterm },
    LineNr       = { fg = c.grey.gui, ctermfg = c.grey.cterm },
    CursorLineNr = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },
    SignColumn   = { bg = transparent and "NONE" or c.base1.gui, ctermbg = transparent and "NONE" or c.base1.cterm },
    WinBar       = { fg = c.fg.gui, bold = true, ctermfg = c.fg.cterm, cterm = { bold = true } },
    WinBarNC     = { fg = c.grey.gui, ctermfg = c.grey.cterm },

    -- Popup menu
    Pmenu        = { fg = c.white.gui, bg = c.diff_text.gui, ctermfg = c.white.cterm, ctermbg = c.diff_text.cterm },
    PmenuSel     = { fg = c.blue.gui, bg = c.base5.gui, ctermfg = c.blue.cterm, ctermbg = c.base5.cterm },
    PmenuSbar    = { fg = c.blue.gui, bg = c.base5.gui, ctermfg = c.blue.cterm, ctermbg = c.base5.cterm },
    PmenuThumb   = { fg = c.base6.gui, bg = c.base6.gui, ctermfg = c.base6.cterm, ctermbg = c.base6.cterm },
    PmenuMatch   = { fg = c.yellow.gui, bg = c.diff_text.gui, ctermfg = c.yellow.cterm, ctermbg = c.diff_text.cterm },
    PmenuMatchSel = { fg = c.yellow.gui, bg = c.base5.gui, bold = true, ctermfg = c.yellow.cterm, ctermbg = c.base5.cterm, cterm = { bold = true } },

    -- Neovim floating windows
    NormalFloat  = { fg = c.white.gui, bg = c.diff_text.gui, ctermfg = c.white.cterm, ctermbg = c.diff_text.cterm },
    FloatBorder  = { fg = c.diff_remove.gui, bg = c.diff_text.gui, ctermfg = c.diff_remove.cterm, ctermbg = c.diff_text.cterm },
    FloatTitle   = { fg = c.blue.gui, bg = c.diff_text.gui, bold = true, ctermfg = c.blue.cterm, ctermbg = c.diff_text.cterm, cterm = { bold = true } },

    -- Messages
    Question     = { fg = c.green.gui, ctermfg = c.green.cterm },
    ModeMsg      = { fg = c.green.gui, ctermfg = c.green.cterm },
    MoreMsg      = { fg = c.green.gui, ctermfg = c.green.cterm },
    ErrorMsg     = { fg = c.base2.gui, bg = c.aqua.gui, ctermfg = c.base2.cterm, ctermbg = c.aqua.cterm },
    WarningMsg   = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Spelling
    SpellBad     = { fg = c.fg.gui, undercurl = true, sp = c.spell_bad.gui, ctermfg = c.fg.cterm, cterm = { undercurl = true } },
    SpellLocal   = { fg = c.blue.gui, undercurl = true, sp = c.blue.gui, ctermfg = c.blue.cterm, cterm = { undercurl = true } },
    SpellCap     = { undercurl = true, sp = c.yellow.gui, cterm = { undercurl = true } },
    SpellRare    = { undercurl = true, sp = c.purple.gui, cterm = { undercurl = true } },

    -- Tabline
    TabLine      = { fg = c.grey.gui, bg = c.base1.gui, ctermfg = c.grey.cterm, ctermbg = c.base1.cterm },
    TabLineSel   = { fg = c.fg.gui, bg = c.base5.gui, ctermfg = c.fg.cterm, ctermbg = c.base5.cterm },
    TabLineFill  = { fg = c.base2.gui, bg = c.base1.gui, ctermfg = c.base2.cterm, ctermbg = c.base1.cterm },

    -- Misc
    SpecialKey   = { fg = c.base5.gui, ctermfg = c.base5.cterm },
    Title        = { fg = c.green.gui, ctermfg = c.green.cterm },
    Directory    = { fg = c.blue.gui, ctermfg = c.blue.cterm },

    -- Diff
    DiffAdd      = { fg = c.white.gui, bg = c.base3.gui, ctermfg = c.white.cterm, ctermbg = c.base3.cterm },
    DiffDelete   = { fg = c.aqua.gui, bg = c.base4.gui, ctermfg = c.aqua.cterm, ctermbg = c.base4.cterm },
    DiffChange   = { fg = c.green.gui, bg = c.base4.gui, ctermfg = c.green.cterm, ctermbg = c.base4.cterm },
    DiffText     = { fg = c.diff_remove.gui, ctermfg = c.diff_remove.cterm },

    -- Folding
    Folded       = { fg = c.comment.gui, bg = c.base1.gui, ctermfg = c.comment.cterm, ctermbg = c.base1.cterm },
    FoldColumn   = { bg = c.base1.gui, ctermbg = c.base1.cterm },

    -- Cursor
    ColorColumn  = { bg = c.aqua.gui, ctermbg = c.aqua.cterm },
    CursorColumn = { bg = c.brown.gui, ctermbg = c.brown.cterm },
    CursorLine   = { bg = c.brown.gui, ctermbg = c.brown.cterm },
    Cursor       = { fg = c.base2.gui, bg = c.fg.gui, ctermfg = c.base2.cterm, ctermbg = c.fg.cterm },
    lCursor      = { link = "Cursor" },
    iCursor      = { link = "Cursor" },
    vCursor      = { link = "Cursor" },
    Visual       = { bg = c.base5.gui, ctermbg = c.base5.cterm },
    VisualNOS    = { link = "Visual" },
    MatchParen   = { bg = c.aqua.gui, underline = true, ctermfg = c.aqua.cterm, ctermbg = c.black.cterm, cterm = { underline = true } },

    -- Neovim terminal
    TermCursor   = { fg = c.base2.gui, bg = c.fg.gui, ctermfg = c.base2.cterm, ctermbg = c.fg.cterm },
    TermCursorNC = { fg = c.base2.gui, bg = c.base6.gui, ctermfg = c.base2.cterm, ctermbg = c.base6.cterm },
  }
end

return M
