local _autopairs, autopairs = pcall(require, "nvim-autopairs")

if not _autopairs then
    return
end

autopairs.setup {}
