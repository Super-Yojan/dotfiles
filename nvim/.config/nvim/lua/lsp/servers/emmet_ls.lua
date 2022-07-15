local _M = {}

_M.setup = function(on_attach, capabilities)
    require("lspconfig").emmet_ls.setup {
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilities,
        root_dir = function()
            return vim.loop.cwd()
        end,
    }
end

return _M
