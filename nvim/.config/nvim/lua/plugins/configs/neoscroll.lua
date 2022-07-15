local _neoscroll, neoscroll = pcall(require, "neoscroll")

if not _neoscroll then
    return
end

neoscroll.setup {}
