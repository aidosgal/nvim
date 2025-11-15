return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
        },
        config = function()
            local cmp = require("cmp")

            cmp.setup({
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),

                    ["<C-Space>"] = cmp.mapping.complete(),

                    ["<CR>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.confirm({ select = true })
                        else
                            fallback()
                        end
                    end, { "i", "s" }),

                    ["<C-e>"] = cmp.mapping.abort(), 
                }),             
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                }, {
                        { name = "buffer" },
                })
            })

            cmp.setup.cmdline("/", {
                sources = {
                    { name = "buffer" }
                }
            })

            cmp.setup.cmdline(":", {
                sources = cmp.config.sources({
                    { name = "path" }
                }, {
                    { name = "cmdline" }
                })
            })
        end
    },
}

