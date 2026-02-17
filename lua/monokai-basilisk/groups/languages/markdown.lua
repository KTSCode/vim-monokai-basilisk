-- Markdown-specific Treesitter highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    -- Headings with distinct colors per level (matching RenderMarkdown colors)
    ["@markup.heading.1.markdown"]     = { fg = c.green.gui, bold = true, ctermfg = c.green.cterm, cterm = { bold = true } },
    ["@markup.heading.2.markdown"]     = { fg = c.blue.gui, bold = true, ctermfg = c.blue.cterm, cterm = { bold = true } },
    ["@markup.heading.3.markdown"]     = { fg = c.aqua.gui, bold = true, ctermfg = c.aqua.cterm, cterm = { bold = true } },
    ["@markup.heading.4.markdown"]     = { fg = c.light_purple.gui, bold = true, ctermfg = c.light_purple.cterm, cterm = { bold = true } },
    ["@markup.heading.5.markdown"]     = { fg = c.grey.gui, bold = true, ctermfg = c.grey.cterm, cterm = { bold = true } },
    ["@markup.heading.6.markdown"]     = { fg = c.white.gui, bold = true, ctermfg = c.white.cterm, cterm = { bold = true } },

    -- Heading markers (#, ##, etc.)
    ["@markup.heading.1.marker.markdown"] = { fg = c.green.gui, bold = true, ctermfg = c.green.cterm, cterm = { bold = true } },
    ["@markup.heading.2.marker.markdown"] = { fg = c.blue.gui, bold = true, ctermfg = c.blue.cterm, cterm = { bold = true } },
    ["@markup.heading.3.marker.markdown"] = { fg = c.aqua.gui, bold = true, ctermfg = c.aqua.cterm, cterm = { bold = true } },
    ["@markup.heading.4.marker.markdown"] = { fg = c.light_purple.gui, bold = true, ctermfg = c.light_purple.cterm, cterm = { bold = true } },
    ["@markup.heading.5.marker.markdown"] = { fg = c.grey.gui, bold = true, ctermfg = c.grey.cterm, cterm = { bold = true } },
    ["@markup.heading.6.marker.markdown"] = { fg = c.white.gui, bold = true, ctermfg = c.white.cterm, cterm = { bold = true } },

    -- Emphasis
    ["@markup.strong.markdown_inline"]   = { fg = c.fg.gui, bold = true, ctermfg = c.fg.cterm, cterm = { bold = true } },
    ["@markup.italic.markdown_inline"]   = { fg = c.fg.gui, italic = true, ctermfg = c.fg.cterm, cterm = { italic = true } },
    ["@markup.strikethrough.markdown_inline"] = { fg = c.comment.gui, strikethrough = true, ctermfg = c.comment.cterm, cterm = { strikethrough = true } },

    -- Code
    ["@markup.raw.markdown_inline"]    = { fg = c.green.gui, bg = c.base2.gui, ctermfg = c.green.cterm, ctermbg = c.base2.cterm },
    ["@markup.raw.block.markdown"]     = { fg = c.fg.gui, ctermfg = c.fg.cterm },

    -- Links
    ["@markup.link.markdown_inline"]       = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@markup.link.label.markdown_inline"] = { fg = c.light_purple.gui, underline = true, ctermfg = c.light_purple.cterm, cterm = { underline = true } },
    ["@markup.link.url.markdown_inline"]   = { fg = c.comment.gui, underline = true, ctermfg = c.comment.cterm, cterm = { underline = true } },

    -- Lists
    ["@markup.list.markdown"]          = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@markup.list.checked.markdown"]  = { fg = c.green.gui, ctermfg = c.green.cterm },
    ["@markup.list.unchecked.markdown"] = { fg = c.grey.gui, ctermfg = c.grey.cterm },

    -- Block quotes
    ["@markup.quote.markdown"]         = { fg = c.comment.gui, italic = true, ctermfg = c.comment.cterm, cterm = { italic = true } },

    -- Horizontal rule
    ["@punctuation.special.markdown"]  = { fg = c.diff_remove.gui, ctermfg = c.diff_remove.cterm },

    -- Fenced code block language identifier
    ["@label.markdown"]                = { fg = c.blue.gui, ctermfg = c.blue.cterm },
  }
end

return M
