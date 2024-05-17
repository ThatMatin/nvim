require("everforest").setup({
  on_highlights = function(hl, palette)
    hl.DiagnosticError = { fg = palette.none, bg = palette.none, sp = palette.red }
    hl.DiagnosticWarn = { fg = palette.none, bg = palette.none, sp = palette.yellow }
    hl.DiagnosticInfo = { fg = palette.none, bg = palette.none, sp = palette.blue }
    hl.DiagnosticHint = { fg = palette.none, bg = palette.none, sp = palette.green }
  end,
})
