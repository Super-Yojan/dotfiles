local _colorizer, colorizer = pcall(require, "colorizer")

if not _colorizer then
    return
end

colorizer.setup()
