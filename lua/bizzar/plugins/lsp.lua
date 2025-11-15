return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            
            vim.opt.updatetime = 500
            
            local on_attach = function(client, bufnr)
                local bufopts = { noremap=true, silent=true, buffer=bufnr }
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
                vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
                vim.keymap.set({"n","v"}, "<leader>ca", vim.lsp.buf.code_action, bufopts)
                                
                if client.server_capabilities.documentFormattingProvider then
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = bufnr })
                        end,
                    })
                end
            end
            
            vim.lsp.config.gopls = {
                cmd = { "gopls" },
                filetypes = { "go", "gomod", "gowork" },
                root_markers = { "go.mod", "go.work", ".git" },
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    gopls = {
                        analyses = {
                            unusedparams = true,
                            shadow = true,
                        },
                        staticcheck = true,
                    }
                }
            }
            
            vim.lsp.enable("gopls")
        end
    }
}
