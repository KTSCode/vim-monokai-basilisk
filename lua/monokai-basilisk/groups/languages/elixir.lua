-- Elixir-specific Treesitter highlight groups

local M = {}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  return {
    -- Atoms (symbols) in Elixir are a core concept
    ["@string.special.symbol.elixir"]  = { fg = c.purple.gui, ctermfg = c.purple.cterm },

    -- Module names
    ["@module.elixir"]                 = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@type.elixir"]                   = { fg = c.blue.gui, ctermfg = c.blue.cterm },

    -- Functions
    ["@function.elixir"]               = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },
    ["@function.call.elixir"]          = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },

    -- Keyword-style function definitions: def, defp, defmodule, defmacro, etc.
    ["@keyword.function.elixir"]       = { fg = c.blue.gui, ctermfg = c.blue.cterm },

    -- Special keywords: do, end, fn, when, use, import, alias, require
    ["@keyword.elixir"]                = { fg = c.blue.gui, ctermfg = c.blue.cterm },
    ["@keyword.operator.elixir"]       = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@keyword.conditional.elixir"]    = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },
    ["@keyword.exception.elixir"]      = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Operators: pipe |>, match =, pin ^, concat <>, etc.
    ["@operator.elixir"]               = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Sigils: ~r, ~s, ~w, etc.
    ["@string.special.elixir"]         = { fg = c.yellow.gui, ctermfg = c.yellow.cterm },

    -- String interpolation
    ["@punctuation.special.elixir"]    = { fg = c.aqua.gui, ctermfg = c.aqua.cterm },

    -- Module attributes: @moduledoc, @doc, @spec, @type, @behaviour
    ["@attribute.elixir"]              = { fg = c.light_purple.gui, ctermfg = c.light_purple.cterm },

    -- Doc strings get special treatment
    ["@comment.documentation.elixir"]  = { fg = c.green.gui, italic = true, ctermfg = c.green.cterm, cterm = { italic = true } },

    -- Variables
    ["@variable.elixir"]               = { fg = c.fg.gui, ctermfg = c.fg.cterm },
    ["@variable.builtin.elixir"]       = { fg = c.purple.gui, italic = true, ctermfg = c.purple.cterm, cterm = { italic = true } },

    -- Boolean and nil
    ["@boolean.elixir"]                = { fg = c.purple.gui, ctermfg = c.purple.cterm },
    ["@constant.builtin.elixir"]       = { fg = c.purple.gui, ctermfg = c.purple.cterm },

    -- Map/struct keys
    ["@property.elixir"]               = { fg = c.fg.gui, ctermfg = c.fg.cterm },
  }
end

return M
