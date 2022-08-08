local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = vim.fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
end
vim.cmd [[packadd packer.nvim]]

local _packer, packer = pcall(require, "packer")

if not _packer then
    return
end

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "single" }
        end,
        prompt_border = "single",
    },
    git = {
        clone_timeout = 600,
    },
    auto_clean = true,
    compile_on_sync = true,
}

return packer.startup(function(use)
    use { "wbthomason/packer.nvim" }
    use {"dylanaraps/wal.vim"}
    use { "lewis6991/impatient.nvim" }

    -- UI
    use { "rmehri01/onenord.nvim" }
    use({"catppuccin/nvim",as = "catppuccin"
    })
    use {
        "kyazdani42/nvim-web-devicons",
        config = function()
            require "plugins.configs.icons"
        end,
    }
    use {
        "akinsho/bufferline.nvim",
        after = "nvim-web-devicons",
        config = function()
            require "plugins.configs.bufferline"
        end,
    }
    use {
        "folke/which-key.nvim",
    }
    use {
        "karb94/neoscroll.nvim",
        config = function()
            require "plugins.configs.neoscroll"
        end,
    }
    use {
        "feline-nvim/feline.nvim",
        after = "nvim-web-devicons",
        config = function()
            require "plugins.configs.feline"
        end,
    }

    -- -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        requires = {
            "windwp/nvim-ts-autotag",
            "p00f/nvim-ts-rainbow",
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        run = ":TSUpdate",
        config = function()
            require "plugins.configs.treesitter"
        end,
    }

    -- -- Utilities
    use {
        "kyazdani42/nvim-tree.lua",
        after = "nvim-web-devicons",
        config = function()
            require "plugins.configs.nvimtree"
        end,
    }
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-node-modules.nvim",
        },
        config = function()
            require "plugins.configs.telescope"
        end,
    }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require "plugins.configs.indent"
        end,
    }
    use {
        "windwp/nvim-autopairs",
        config = function()
            require "plugins.configs.autopairs"
        end,
        setup = function()
            require("utils").packer_lazy_load "nvim-autopairs"
        end,
    }
    use {
        "tpope/vim-surround",
        setup = function()
            require("utils").packer_lazy_load "vim-surround"
        end,
    }
    use {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require "plugins.configs.colorizer"
        end,
    }

    -- LSP
    use {
        "neovim/nvim-lspconfig",
        requires = {
            "folke/lua-dev.nvim",
            "jose-elias-alvarez/typescript.nvim",
        },
    }
    use {
        "jose-elias-alvarez/null-ls.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    }
    use {
        "ray-x/lsp_signature.nvim",
        setup = function()
            require("utils").packer_lazy_load "lsp_signature.nvim"
        end,
    }
    use {
        "j-hui/fidget.nvim",
        config = function()
            require "plugins.configs.fidget"
        end,
    }

    -- -- Comment
    use {
        "numToStr/Comment.nvim",
        config = function()
            require "plugins.configs.comment"
        end,
        setup = function()
            require("utils").packer_lazy_load "Comment.nvim"
        end,
    }

    -- -- Completion
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp-document-symbol",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
        },
        config = function()
            require "plugins.configs.cmp"
        end,
    }

    -- -- Snippets
    use {
        "dsznajder/vscode-es7-javascript-react-snippets",
        run = "yarn install --frozen-lockfile && yarn compile",
        setup = function()
            require("utils").packer_lazy_load "vscode-es7-javascript-react-snippets"
        end,
    }
    use {
        "rafamadriz/friendly-snippets",
        setup = function()
            require("utils").packer_lazy_load "friendly-snippets"
        end,
    }

    -- Tmux
    use {
        "aserowy/tmux.nvim",
        config = function()
            require "plugins.configs.tmux"
        end,
    }

    -- Git
    use {
        "lewis6991/gitsigns.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require "plugins.configs.gitsigns"
        end,
        setup = function()
            require("utils").packer_lazy_load "gitsigns.nvim"
        end,
    }
    -- Latex

    use {"xuhdev/vim-latex-live-preview",
        config = function()
            vim.cmd([[let g:livepreview_previewer = 'zathura']])
        end,
    }

    -- Markdown
    use {
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    }

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
