local _M = {}

_M.powerline = {
    circle = {
        left = "",
        right = "",
    },
    arrow = {
        left = "",
        right = "",
    },
    triangle = {
        left = "",
        right = "",
    },
    none = {
        left = "",
        right = "",
    },
}

_M.signs = { Error = "", Warn = "", Hint = "", Info = "" }

_M.set_indent_sizes = function(filetypes)
    for filetype, size in pairs(filetypes) do
        vim.api.nvim_create_autocmd("FileType", {
            pattern = filetype,
            callback = function()
                vim.opt.shiftwidth = size
                vim.opt.tabstop = size
                vim.opt.softtabstop = size
            end,
        })
    end
end

_M.packer_lazy_load = function(plugin, timer)
    if plugin then
        timer = timer or 0
        vim.defer_fn(function()
            require("packer").loader(plugin)
        end, timer)
    end
end

return _M
