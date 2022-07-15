local ok, null_ls = pcall(require, "null-ls")

if not ok then
    return
end

local with_root_file = function(...)
    local files = { ... }
    return function(utils)
        return utils.root_has_file(files)
    end
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions

local _M = {}

_M.setup = function(on_attach)
    null_ls.setup {
        sources = {
            diagnostics.hadolint,
            -- diagnostics.eslint_d.with {
            --     condition = with_root_file { ".eslintrc", ".eslintrc.js", ".eslintrc.json" },
            -- },
            diagnostics.markdownlint,
            diagnostics.tidy,
            diagnostics.yamllint,
            diagnostics.jsonlint,
            diagnostics.checkmake,
            diagnostics.alex,
            diagnostics.shellcheck,
            formatting.prettierd,
            formatting.stylua,
            formatting.gofmt,
            formatting.shfmt.with {
                filetypes = { "sh", "bash", "zsh" },
            },
            formatting.rustfmt,

            -- code_actions.eslint_d.with {
            --     condition = with_root_file { ".eslintrc", ".eslintrc.js", ".eslintrc.json" },
            -- },
            code_actions.gitsigns,
        },
        on_attach = on_attach,
    }
end

return _M
