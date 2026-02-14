-- YAML-specific Treesitter highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    -- Keys are the most important element in YAML
    ["@property.yaml"]                = { fg = c.blue.gui, ctermfg = c.blue.cterm },

    -- String values
    ["@string.yaml"]                  = { fg = c.green.gui, ctermfg = c.green.cterm },

    -- Numbers and booleans
    ["@number.yaml"]                  = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    ["@number.float.yaml"]            = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    ["@boolean.yaml"]                 = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    ["@constant.builtin.yaml"]        = { fg = c.purple.gui, ctermfg = c.purple.cterm },

    -- Anchors and aliases (&anchor, *alias)
    ["@label.yaml"]                   = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },
    ["@variable.yaml"]                = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },

    -- Tags (!!str, !!int, custom tags)
    ["@type.yaml"]                    = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Punctuation: colons, dashes, brackets
    ["@punctuation.delimiter.yaml"]   = { fg = c.fg.gui, ctermfg = c.fg.cterm },
    ["@punctuation.special.yaml"]     = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Document markers (---, ...)
    ["@keyword.directive.yaml"]       = { fg = c.diff_remove.gui, ctermfg = c.diff_remove.cterm },

    -- Comments
    ["@comment.yaml"]                 = { fg = c.comment.gui, italic = opts.styles.comments.italic, ctermfg = c.comment.cterm, cterm = { italic = opts.styles.comments.italic } },
  }
end

return M
