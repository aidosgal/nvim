function ColorMyPencils(color)
    vim.cmd.colorscheme(color)
    vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
        end,
    })
end

return {
    {
        "iruzo/matrix-nvim",
        config = function()
            ColorMyPencils("vim")
        end
    },
}
