-- Clear existing highlights
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end
vim.g.colors_name = "mytheme"

local p = {
    bg0 = "#000000", bg1 = "#111111", bg2 = "#222222", fg0 = "#ffffff", fg1 = "#eeeeee",
    blue = "#4A7CE0", cyan = "#70BBE0", green = "#60c060", yellow = "#ffb840",
    red = "#ff3840", magenta = "#E04A90", grey = "#888888"
}

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

-- UI Elements
hl("Normal", { fg = p.fg0, bg = p.bg0 })
hl("CursorLine", { bg = p.bg1 })
hl("StatusLine", { fg = p.fg1, bg = p.bg2 })

-- Syntax (The "Big" ones)
hl("Keyword", { fg = p.magenta, bold = true })
hl("Function", { fg = p.blue })
hl("String", { fg = p.green })
hl("Constant", { fg = p.cyan })
hl("Comment", { fg = p.grey, italic = true })
hl("Statement", { fg = p.red })

-- Plugin Support (Treesitter)
hl("@variable", { fg = p.fg1 })
hl("@method", { fg = p.blue })
hl("@property", { fg = p.cyanalt or p.cyan })
