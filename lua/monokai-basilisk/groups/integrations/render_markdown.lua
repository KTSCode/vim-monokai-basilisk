-- render-markdown.nvim plugin highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    -- Code blocks
    RenderMarkdownCode       = { bg = c.base2.gui },
    RenderMarkdownCodeInline = { bg = c.base2.gui },

    -- Header foreground
    RenderMarkdownH1         = { fg = c.green.gui },
    RenderMarkdownH2         = { fg = c.blue.gui },
    RenderMarkdownH3         = { fg = c.aqua.gui },
    RenderMarkdownH4         = { fg = c.light_purple.gui },
    RenderMarkdownH5         = { fg = c.grey.gui },
    RenderMarkdownH6         = { fg = c.white.gui },
    RenderMarkdownH7         = { fg = c.md_h7_fg.gui },

    -- Header background
    RenderMarkdownH1Bg       = { bg = c.md_h1_bg.gui },
    RenderMarkdownH2Bg       = { bg = c.md_h2_bg.gui },
    RenderMarkdownH3Bg       = { bg = c.md_h3_bg.gui },
    RenderMarkdownH4Bg       = { bg = c.md_h4_bg.gui },
    RenderMarkdownH5Bg       = { bg = c.md_h5_bg.gui },
    RenderMarkdownH6Bg       = { bg = c.md_h6_bg.gui },
    RenderMarkdownH7Bg       = { bg = c.md_h7_bg.gui },
  }
end

return M
