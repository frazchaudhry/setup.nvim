-- Setup for lazy.nvim
-- lazypath is a local variable. By default in lua defining a variable without the local
-- keyword will make it available globally. Sets the lazy.nvim install directory.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- If the path defined above doesn't exist, then clone the lazy.nvim repo at that location.
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
-- rtp is the runtime path. This path contains a list of directories. These directories
-- contain information that isn't available to Neovim by default. For example, when
-- editing a .cpp file, Neovim does not know how to highlight the syntax for C++. So it
-- will look in the list of directories defined inside the rtp to answer that question.
-- This is not only true for syntax highlighting but various other things that Neovim
-- might not know about by default.
vim.opt.rtp:prepend(lazypath)

-- Setting up plugins
require("lazy").setup({
    {
        "rebelot/kanagawa.nvim", -- color scheme from https://github.com/rebelot/kanagawa.nvim
        config = function()
            vim.cmd.colorscheme("kanagawa-wave")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function() 
            require("nvim-treesitter.configs").setup ({
                -- A list of parser names, or "all" (the five listed parsers should always be installed)
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "c_sharp", "javascript", "zig", "html", "css", "vue" },

                -- Automatically install missing parsers when entering buffer
                -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
                auto_install = true,

                highlight = {
                    enable = true,
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<CR>",
                        scope_incremental = "<CR>",
                        node_incremental = "<TAB>",
                        node_decremental = "<S-TAB>"
                    }
                }
            })
        end,
    },
})
