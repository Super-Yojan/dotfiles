local _tmux, tmux = pcall(require, "tmux")

if not _tmux then
    return
end

tmux.setup {
    copy_sync = {
        enable = true,
    },
    navigation = {
        enable_default_keybindings = true,
    },
    resize = {
        enable_default_keybindings = true,
    },
}
