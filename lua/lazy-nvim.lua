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
require("lazy").setup({ { import = "plugins" }, { import = "plugins.lsp" }, { import = "plugins.colorschemes" } })
