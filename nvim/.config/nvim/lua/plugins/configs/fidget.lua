local _fidget, fidget = pcall(require, "fidget")

if not _fidget then
    return
end

fidget.setup {
    text = {
        spinner = "dots",
        done = "",
    },
    window = {
        blend = 0,
    },
}
