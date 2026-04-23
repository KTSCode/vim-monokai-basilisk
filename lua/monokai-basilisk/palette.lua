-- Monokai Basilisk color palette
-- All colors preserved from the original VimScript colorscheme

local M = {}

---@class MonokaiBasiliskColor
---@field gui string Hex color for GUI/termguicolors
---@field cterm integer|string Terminal 256-color code or "NONE"

---@class MonokaiBasiliskPalette
---@field none MonokaiBasiliskColor
---@field base1 MonokaiBasiliskColor
---@field base2 MonokaiBasiliskColor
---@field base3 MonokaiBasiliskColor
---@field base4 MonokaiBasiliskColor
---@field base5 MonokaiBasiliskColor
---@field base6 MonokaiBasiliskColor
---@field white MonokaiBasiliskColor
---@field black MonokaiBasiliskColor
---@field red MonokaiBasiliskColor
---@field green MonokaiBasiliskColor
---@field blue MonokaiBasiliskColor
---@field aqua MonokaiBasiliskColor
---@field yellow MonokaiBasiliskColor
---@field purple MonokaiBasiliskColor
---@field light_purple MonokaiBasiliskColor
---@field grey MonokaiBasiliskColor
---@field brown MonokaiBasiliskColor
---@field comment MonokaiBasiliskColor
---@field diff_text MonokaiBasiliskColor
---@field diff_remove MonokaiBasiliskColor

---@type MonokaiBasiliskPalette
M.colors = {
  none         = { gui = "NONE",    cterm = "NONE" },
  base1        = { gui = "#000000", cterm = 0 },   -- Background
  base2        = { gui = "#111111", cterm = 233 },
  base3        = { gui = "#0D2812", cterm = 22 },
  base4        = { gui = "#3C1518", cterm = 52 },
  base5        = { gui = "#49483E", cterm = 59 },
  base6        = { gui = "#778899", cterm = 103 },
  white        = { gui = "#F8F8F8", cterm = 15 },
  fg           = { gui = "#F8F8F2", cterm = 15 },
  black        = { gui = "#000000", cterm = 0 },
  red          = { gui = "#960020", cterm = 88 },
  green        = { gui = "#00D700", cterm = 40 },
  blue         = { gui = "#66D9EF", cterm = 81 },
  aqua         = { gui = "#00afff", cterm = 39 },
  yellow       = { gui = "#FFE972", cterm = 221 },
  purple       = { gui = "#AE81FF", cterm = 141 },
  light_purple = { gui = "#875fff", cterm = 99 },
  grey         = { gui = "#8F908A", cterm = 102 },
  brown        = { gui = "#383A3E", cterm = 236 },
  comment      = { gui = "#585858", cterm = 240 },
  diff_text    = { gui = "#223344", cterm = 23 },
  diff_remove  = { gui = "#75715E", cterm = 95 },
  -- Special colors used in specific highlights
  spell_bad    = { gui = "#F92782", cterm = "NONE" },
  -- RenderMarkdown header backgrounds
  md_h1_bg     = { gui = "#003300", cterm = "NONE" },
  md_h2_bg     = { gui = "#001133", cterm = "NONE" },
  md_h3_bg     = { gui = "#000033", cterm = "NONE" },
  md_h4_bg     = { gui = "#110033", cterm = "NONE" },
  md_h5_bg     = { gui = "#222222", cterm = "NONE" },
  md_h6_bg     = { gui = "#111111", cterm = "NONE" },
  md_h7_bg     = { gui = "#005500", cterm = "NONE" },
  md_h7_fg     = { gui = "#99FF99", cterm = "NONE" },
}

---@return MonokaiBasiliskPalette
function M.get()
  return vim.deepcopy(M.colors)
end

return M
