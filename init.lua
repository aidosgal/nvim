require("bizzar.core.remap")
require("bizzar.core.set")

require("bizzar.lazy")

vim.cmd.colorscheme('monokai')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", bold = true })

vim.api.nvim_set_hl(0, "DiagnosticSignError", { bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn",  { bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo",  { bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint",  { bg = "none" })

vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn",  { bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo",  { bg = "none" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint",  { bg = "none" })

vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
