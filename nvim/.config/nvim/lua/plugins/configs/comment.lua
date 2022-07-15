local _comment, comment = pcall(require, "Comment")

if not _comment then
    return
end

comment.setup {
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
        line = "gcc",
        block = "gbc",
    },
    opleader = {
        line = "gc",
        block = "gb",
    },
    mappings = {
        basic = true,
        extra = true,
        extended = false,
    },
    pre_hook = nil,
    post_hook = nil,
}
