local _wk, wk = pcall(require, "which-key")

if not _wk then
    return
end

local opts = {
    mode = "n",
    prefix = "",
    silent = true,
    noremap = true,
    nowait = true,
}

wk.register({
    ["<leader>]"] = { "<cmd>bn<cr>", "[BUFFER] Go previous buffer" },
    ["<leader>["] = { "<cmd>bp<cr>", "[BUFFER] Go next buffer" },
    ["<leader>q"] = { "<cmd>bd<cr>", "[BUFFER] Close current buffer" },
    ["<leader>Q"] = { "<cmd>%bd|e#|bd#<cr>", "[BUFFER] Close other buffers" },

    ["<leader>n"] = {
        name = "[NVIMTREE]",
        n = { "<cmd>NvimTreeToggle<cr>", "[NVIMTREE] Toggle" },
        r = { "<cmd>NvimTreeRefresh<cr>", "[NVIMTREE] Refresh" },
        c = { "<cmd>NvimTreeCollapse<cr>", "[NVIMTREE] Collapse" },
    },
    ["<c-n>"] = { "<cmd>NvimTreeToggle<cr>", "[NVIMTREE] Toggle" },

    ["<leader>f"] = {
        name = "[TELESCOPE]",
        f = { "<cmd>Telescope find_files hidden=true no_ignore=true<cr>", "[TELESCOPE] Find File" },
        g = { "<cmd>Telescope live_grep<cr>", "[TELESCOPE] Find File by grep" },
        b = { "<cmd>Telescope buffers<cr>", "[TELESCOPE] Find buffers" },
        n = { "<cmd>Telescope node_modules list<cr>", "[TELESCOPE] node_modules" },
        d = { "<cmd>Telescope diagnostics<cr>", "[TELESCOPE] Diagnostics" },
    },

    ["<leader>g"] = {
        name = "[GIT]",
        s = { "<cmd>Gitsigns toggle_signs<cr>", "[GIT] Toggle signs" },
        h = { "<cmd>Gitsigns preview_hunk<cr>", "[GIT] Preview hunk" },
        d = { "<cmd>Gitsigns diffthis<cr>", "[GIT] Diff" },
        n = { "<cmd>Gitsigns next_hunk<cr>", "[GIT] Next hunk" },
        p = { "<cmd>Gitsigns prev_hunk<cr>", "[GIT] Prev hunk" },
        f = { "<cmd>Telescope git_status<cr>", "[GIT] Files Status" },
        c = { "<cmd>Telescope git_commits<cr>", "[GIT] Commits" },
        b = { "<cmd>Telescope git_branches<cr>", "[GIT] Branches" },
    },
}, opts)

wk.setup {}
