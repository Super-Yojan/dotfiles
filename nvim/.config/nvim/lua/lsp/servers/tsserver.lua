local _M = {}

_M.setup = function(on_attach, capabilities)
    require("typescript").setup {
        server = {
            on_attach = function(client, bufnr)
                client.server_capabilities.document_formatting = false
                client.server_capabilities.document_range_formatting = false
                local opts = { noremap = true, silent = true, nowait = true }
                vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>tr", "<cmd>TypescriptRemoveUnused<cr>", opts)
                vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>to", "<cmd>TypescriptOrganizeImports<cr>", opts)
                vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ta", "<cmd>TypescriptAddMissingImports<cr>", opts)
                vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>tx", "<cmd>TypescriptFixAll<cr>", opts)
                vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>tn", "<cmd>TypescriptRenameFile<cr>", opts)

                on_attach(client, bufnr)
            end,
            capabilities = capabilities,
        },
    }
end

return _M
