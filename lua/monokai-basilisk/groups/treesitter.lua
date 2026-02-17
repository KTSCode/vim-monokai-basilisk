-- Treesitter highlight groups (Neovim 0.9+)
-- Uses the @capture naming convention with hierarchical fallback

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    -- Identifiers
    ["@variable"]                 = { fg = c.fg.gui, ctermfg = c.fg.cterm },
    ["@variable.builtin"]         = { fg = c.purple.gui, italic = true, ctermfg = c.purple.cterm, cterm = { italic = true } },
    ["@variable.parameter"]       = { fg = c.fg.gui, italic = true, ctermfg = c.fg.cterm, cterm = { italic = true } },
    ["@variable.parameter.builtin"] = { fg = c.purple.gui, italic = true, ctermfg = c.purple.cterm, cterm = { italic = true } },
    ["@variable.member"]          = { fg = c.fg.gui, ctermfg = c.fg.cterm },

    -- Constants
    ["@constant"]                 = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    ["@constant.builtin"]         = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    ["@constant.macro"]           = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@module"]                   = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@module.builtin"]           = { fg = c.blue.gui, italic = true, ctermfg = c.blue.cterm, cterm = { italic = true } },
    ["@label"]                    = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Literals
    ["@string"]                   = { fg = c.green.gui, ctermfg = c.green.cterm },
    ["@string.documentation"]     = { fg = c.green.gui, ctermfg = c.green.cterm },
    ["@string.regexp"]            = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },
    ["@string.escape"]            = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@string.special"]           = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@string.special.symbol"]    = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    ["@string.special.url"]       = { fg = c.light_purple.gui, underline = true, ctermfg = c.light_purple.cterm, cterm = { underline = true } },
    ["@string.special.path"]      = { fg = c.light_purple.gui, underline = true, ctermfg = c.light_purple.cterm, cterm = { underline = true } },
    ["@character"]                = { fg = c.green.gui, ctermfg = c.green.cterm },
    ["@character.special"]        = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@boolean"]                  = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    ["@number"]                   = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    ["@number.float"]             = { fg = c.purple.gui, ctermfg = c.purple.cterm },

    -- Types
    ["@type"]                     = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@type.builtin"]             = { fg = c.blue.gui, italic = true, ctermfg = c.blue.cterm, cterm = { italic = true } },
    ["@type.definition"]          = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Attributes / Properties
    ["@attribute"]                = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@attribute.builtin"]        = { fg = c.light_purple.gui, italic = true, ctermfg = c.light_purple.cterm, cterm = { italic = true } },
    ["@property"]                 = { fg = c.fg.gui, ctermfg = c.fg.cterm },

    -- Functions
    ["@function"]                 = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@function.builtin"]         = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@function.call"]            = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@function.macro"]           = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@function.method"]          = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@function.method.call"]     = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@constructor"]              = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@operator"]                 = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Keywords
    ["@keyword"]                  = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@keyword.coroutine"]        = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@keyword.function"]         = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@keyword.operator"]         = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@keyword.import"]           = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@keyword.type"]             = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@keyword.modifier"]         = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@keyword.repeat"]           = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@keyword.return"]           = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@keyword.debug"]            = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@keyword.exception"]        = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@keyword.conditional"]      = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@keyword.conditional.ternary"] = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@keyword.directive"]        = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@keyword.directive.define"] = { fg = c.blue.gui, ctermfg = c.blue.cterm },

    -- Punctuation
    ["@punctuation.delimiter"]    = { fg = c.fg.gui, ctermfg = c.fg.cterm },
    ["@punctuation.bracket"]      = { fg = c.fg.gui, ctermfg = c.fg.cterm },
    ["@punctuation.special"]      = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Comments
    ["@comment"]                  = { fg = c.comment.gui, italic = opts.styles.comments.italic, ctermfg = c.comment.cterm, cterm = { italic = opts.styles.comments.italic } },
    ["@comment.documentation"]    = { fg = c.comment.gui, italic = opts.styles.comments.italic, ctermfg = c.comment.cterm, cterm = { italic = opts.styles.comments.italic } },
    ["@comment.error"]            = { fg = c.fg.gui, bg = c.red.gui, ctermfg = c.fg.cterm, ctermbg = c.red.cterm },
    ["@comment.warning"]          = { fg = c.base1.gui, bg = c.yellow.gui, ctermfg = c.base1.cterm, ctermbg = c.yellow.cterm },
    ["@comment.todo"]             = { fg = c.fg.gui, bg = c.base1.gui, bold = true, ctermfg = c.fg.cterm, ctermbg = c.base1.cterm, cterm = { bold = true } },
    ["@comment.note"]             = { fg = c.base1.gui, bg = c.blue.gui, ctermfg = c.base1.cterm, ctermbg = c.blue.cterm },

    -- Markup
    ["@markup.strong"]            = { bold = true, cterm = { bold = true } },
    ["@markup.italic"]            = { italic = true, cterm = { italic = true } },
    ["@markup.strikethrough"]     = { strikethrough = true, cterm = { strikethrough = true } },
    ["@markup.underline"]         = { underline = true, cterm = { underline = true } },
    ["@markup.heading"]           = { fg = c.green.gui, bold = true, ctermfg = c.green.cterm, cterm = { bold = true } },
    ["@markup.heading.1"]         = { fg = c.green.gui, bold = true, ctermfg = c.green.cterm, cterm = { bold = true } },
    ["@markup.heading.2"]         = { fg = c.blue.gui, bold = true, ctermfg = c.blue.cterm, cterm = { bold = true } },
    ["@markup.heading.3"]         = { fg = c.aqua.gui, bold = true, ctermfg = c.aqua.cterm, cterm = { bold = true } },
    ["@markup.heading.4"]         = { fg = c.light_purple.gui, bold = true, ctermfg = c.light_purple.cterm, cterm = { bold = true } },
    ["@markup.heading.5"]         = { fg = c.grey.gui, bold = true, ctermfg = c.grey.cterm, cterm = { bold = true } },
    ["@markup.heading.6"]         = { fg = c.white.gui, bold = true, ctermfg = c.white.cterm, cterm = { bold = true } },
    ["@markup.quote"]             = { fg = c.comment.gui, italic = true, ctermfg = c.comment.cterm, cterm = { italic = true } },
    ["@markup.math"]              = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    ["@markup.link"]              = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@markup.link.label"]        = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@markup.link.url"]          = { fg = c.light_purple.gui, underline = true, ctermfg = c.light_purple.cterm, cterm = { underline = true } },
    ["@markup.raw"]               = { fg = c.green.gui, ctermfg = c.green.cterm },
    ["@markup.raw.block"]         = { fg = c.fg.gui, ctermfg = c.fg.cterm },
    ["@markup.list"]              = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@markup.list.checked"]      = { fg = c.green.gui, ctermfg = c.green.cterm },
    ["@markup.list.unchecked"]    = { fg = c.grey.gui, ctermfg = c.grey.cterm },

    -- Diff
    ["@diff.plus"]                = { link = "DiffAdd" },
    ["@diff.minus"]               = { link = "DiffDelete" },
    ["@diff.delta"]               = { link = "DiffChange" },

    -- Tags (HTML/XML/JSX)
    ["@tag"]                      = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@tag.attribute"]            = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@tag.delimiter"]            = { fg = c.fg.gui, ctermfg = c.fg.cterm },
  }
end

return M
