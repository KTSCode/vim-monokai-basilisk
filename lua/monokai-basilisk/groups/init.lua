-- Aggregates all highlight group modules

local M = {}

-- Plugin integration modules and their config keys
local integrations = {
  { module = "monokai-basilisk.groups.integrations.coc",             key = "coc" },
  { module = "monokai-basilisk.groups.integrations.telescope",       key = "telescope" },
  { module = "monokai-basilisk.groups.integrations.cmp",             key = "cmp" },
  { module = "monokai-basilisk.groups.integrations.gitsigns",        key = "gitsigns" },
  { module = "monokai-basilisk.groups.integrations.indent_blankline", key = "indent_blankline" },
  { module = "monokai-basilisk.groups.integrations.render_markdown", key = "render_markdown" },
}

-- Language-specific modules (always loaded)
local languages = {
  "monokai-basilisk.groups.languages.elixir",
  "monokai-basilisk.groups.languages.markdown",
  "monokai-basilisk.groups.languages.yaml",
}

---@param c MonokaiBasiliskPalette
---@param opts MonokaiBasiliskConfig
---@return table<string, table>
function M.get(c, opts)
  local groups = {}

  -- Core groups (always loaded)
  local core_modules = {
    require("monokai-basilisk.groups.editor"),
    require("monokai-basilisk.groups.syntax"),
    require("monokai-basilisk.groups.treesitter"),
    require("monokai-basilisk.groups.semantic_tokens"),
    require("monokai-basilisk.groups.diagnostics"),
  }

  for _, mod in ipairs(core_modules) do
    for group, hl in pairs(mod.get(c, opts)) do
      groups[group] = hl
    end
  end

  -- Language-specific groups (always loaded)
  for _, mod_name in ipairs(languages) do
    local mod = require(mod_name)
    for group, hl in pairs(mod.get(c, opts)) do
      groups[group] = hl
    end
  end

  -- Plugin integrations (conditionally loaded based on config)
  for _, integration in ipairs(integrations) do
    if opts.plugins[integration.key] ~= false then
      local mod = require(integration.module)
      for group, hl in pairs(mod.get(c, opts)) do
        groups[group] = hl
      end
    end
  end

  return groups
end

return M
