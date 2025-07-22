vim.cmd("highlight clear")
vim.o.background = "light"
vim.g.colors_name = "bow"

local function hi(group, fg, bg, attr)
  local cmd = "highlight " .. group
  if fg then cmd = cmd .. " guifg=" .. fg end
  if bg then cmd = cmd .. " guibg=" .. bg end
  if attr then cmd = cmd .. " gui=" .. attr end
  vim.cmd(cmd)
end

-- Palette
local fg = "#212529"
local bg = "#f8f9fa"
local soft = "#495057"
local mid = "#868e96"
local light = "#dee2e6"
local comment = "#adb5bd"

-- UI
hi("Normal", fg, bg)
hi("CursorLine", nil, "#e9ecef")
hi("CursorLineNr", fg, nil, "bold")
hi("LineNr", mid)
hi("VertSplit", light)
hi("Visual", nil, light)
hi("StatusLine", soft, "#e9ecef")
hi("StatusLineNC", mid, light)
hi("Search", bg, mid)
hi("ColorColumn", nil, light)

-- Syntax
hi("Comment", comment, nil, "italic")
hi("String", soft)
hi("Function", fg, nil, "bold")
hi("Keyword", fg)
hi("Identifier", fg)
hi("Type", soft)
hi("PreProc", mid)
hi("Todo", fg, light)

-- Diff
hi("DiffAdd", nil, "#d3f9d8")
hi("DiffChange", nil, "#fff3bf")
hi("DiffDelete", nil, "#ffa8a8")
hi("DiffText", nil, "#ffe066")

-- Diagnostics
hi("DiagnosticError", "#c92a2a")
hi("DiagnosticWarn", "#e67700")
hi("DiagnosticInfo", "#1971c2")
hi("DiagnosticHint", "#5c940d")
