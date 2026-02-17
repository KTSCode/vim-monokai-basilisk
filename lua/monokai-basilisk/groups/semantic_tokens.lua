-- LSP semantic token highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    -- Token types
    ["@lsp.type.namespace"]      = { link = "@module" },
    ["@lsp.type.type"]           = { link = "@type" },
    ["@lsp.type.class"]          = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@lsp.type.enum"]           = { link = "@type" },
    ["@lsp.type.interface"]      = { fg = c.blue.gui, italic = true, ctermfg = c.blue.cterm, cterm = { italic = true } },
    ["@lsp.type.struct"]         = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@lsp.type.typeParameter"]  = { link = "@type.definition" },
    ["@lsp.type.parameter"]      = { link = "@variable.parameter" },
    ["@lsp.type.variable"]       = { link = "@variable" },
    ["@lsp.type.property"]       = { link = "@property" },
    ["@lsp.type.enumMember"]     = { link = "@constant" },
    ["@lsp.type.function"]       = { link = "@function" },
    ["@lsp.type.method"]         = { link = "@function.method" },
    ["@lsp.type.macro"]          = { link = "@function.macro" },
    ["@lsp.type.keyword"]        = { link = "@keyword" },
    ["@lsp.type.modifier"]       = { link = "@keyword.modifier" },
    ["@lsp.type.comment"]        = { link = "@comment" },
    ["@lsp.type.string"]         = { link = "@string" },
    ["@lsp.type.number"]         = { link = "@number" },
    ["@lsp.type.regexp"]         = { link = "@string.regexp" },
    ["@lsp.type.operator"]       = { link = "@operator" },
    ["@lsp.type.decorator"]      = { link = "@attribute" },
    ["@lsp.type.event"]          = { fg = c.blue.gui, ctermfg = c.blue.cterm },

    -- Modifier highlights
    ["@lsp.mod.deprecated"]      = { strikethrough = true, cterm = { strikethrough = true } },
    ["@lsp.mod.readonly"]        = {},
    ["@lsp.mod.defaultLibrary"]  = { link = "@function.builtin" },
    ["@lsp.mod.abstract"]        = { italic = true, cterm = { italic = true } },

    -- Type+modifier combos
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.readonly"]       = { link = "@constant" },
  }
end

return M
